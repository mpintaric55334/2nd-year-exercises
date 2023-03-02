#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

FILE *status;
FILE *obradatxt;
int broj=1;

void obradi_dogadjaj(int sig);
void obradi_sigterm(int sig);
void obradi_sigint(int sig);


int obrada(int broj){
	return broj*broj;
}

int main(void){
	
	//MASKIRANJE
	struct sigaction act;
	/* 1. maskiranje signala SIGUSR1 */
	act.sa_handler = obradi_dogadjaj; /* kojom se funkcijom signal obrađuje */
	sigemptyset(&act.sa_mask);
	sigaddset(&act.sa_mask, SIGTERM); /* blokirati i SIGTERM za vrijeme obrade */
	act.sa_flags = 0; /* naprednije mogućnosti preskočene */
	sigaction(SIGUSR1, &act, NULL); /* maskiranje signala preko sučelja OS-a */
	/* 2. maskiranje signala SIGTERM */
	act.sa_handler = obradi_sigterm;
	sigemptyset(&act.sa_mask);
	sigaction(SIGTERM, &act, NULL);
	/* 3. maskiranje signala SIGINT */
	act.sa_handler = obradi_sigint;
	sigaction(SIGINT, &act, NULL);
	 
	printf("Program s PID=%ld krenuo s radom\n", (long) getpid());
	 
	//Pročitaj broj iz status.txt
	status=fopen("status.txt","r");
	fscanf(status,"%d",&broj);
	fclose(status);
	//ako je broj==0
	if(broj==0){
		int b;
		int c=0;//dummy variable
		obradatxt=fopen("obrada.txt","r");
		while(fscanf(obradatxt,"%d",&b)==1){
			c+=1;//samo da se nesto dogada
		}
		broj=c;//zadnji proc broj
		fclose(obradatxt);
	}
	//zapisi 0 u status.txt
	status=fopen("status.txt","w");
	fputs("0",status);
	fclose(status);
	//beskonacna petlja
	while(1==1){
		broj+=1;
		printf("Obradujemo broj: %d\n",broj);
		int x=obrada(broj);
		obradatxt=fopen("obrada.txt","a");
		fprintf(obradatxt,"%d\n",x);
		fclose(obradatxt);
		for(int i=0;i<5;i++){
			sleep(1);
		}
		
	}
		
	

}
//sigusr1
	void obradi_dogadjaj(int sig)
	{
		printf("%d\n",broj);
	}
	//sigterm
	void obradi_sigterm(int sig)
	{
		status=fopen("status.txt","w");
		fprintf(status,"%d",broj);
		fclose(status);
		exit(1);
	}
	//sigint
	void obradi_sigint(int sig)
	{
		 printf("Primio signal SIGINT, prekidam rad\n");
		 exit(1);
	}