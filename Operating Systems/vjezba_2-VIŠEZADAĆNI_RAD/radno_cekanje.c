#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/wait.h>
#include <pthread.h>
#include <time.h>
FILE *rezultattxt;


int Id;//identifikacijski br segmenta
int *ZajednickaVarijabla;

int zajednicka2;//globalna koju dijele dretve u procesu2

void brisi_sig_int(){//za sigint
	/* oslobađanje zajedničke memorije */
   (void) shmdt((char *) ZajednickaVarijabla);
   (void) shmctl(Id, IPC_RMID, NULL);
   exit(1);
	
}
void brisi(){
	
   (void) shmdt((char *) ZajednickaVarijabla);
   (void) shmctl(Id, IPC_RMID, NULL);
   exit(0);//razlika u usporedbi sa sigint
}

void ulazna(int x){
	
	int n= x;
	printf("Pokrenuta ULAZNA DRETVA\n");
	int i=0;
	while(1){
		if(*ZajednickaVarijabla==0 && i<n){
			
			int a=rand()%5 + 1;
			sleep(a);
			int b=rand()%100 + 1;// kako bi izbjegli da se nešto printa prije drugog
			printf("ULAZNA DRETVA: broj %d\n",b);
			*ZajednickaVarijabla=b;
			i+=1;
		}
		if(i==n){
			break;
		}
	}
	sleep(1);
	printf("Završila ULAZNA DRETVA\n");
	
	
}

void *radna(void *x){
	
	int n= *((int *)x);
	printf("Pokrenuta RADNA DRETVA\n");
	int i=0;
	while(1){
		if(*ZajednickaVarijabla!=0 && i<n){
			(*ZajednickaVarijabla)++;
			zajednicka2=*ZajednickaVarijabla;
			printf("RADNA DRETVA: pročitan broj %d i povećan na %d\n",zajednicka2-1,zajednicka2);
			*ZajednickaVarijabla=0;
			i+=1;
		}
		if(i==n){
			break;
		}
	}
	sleep(1);
	printf("Završila RADNA DRETVA\n");
	
}

void izlazna(int x){
	
	int n= x;
	printf("Pokrenut IZLAZNI PROCES\n");
	int i=0;
	while(1){
		if(zajednicka2!=0 && i<n){
		
			rezultattxt=fopen("rezultat.txt","a");
			fprintf(rezultattxt,"%d\n",zajednicka2);
			fclose(rezultattxt);
			printf("IZLAZNI PROCES: broj upisan u datoteku %d\n",zajednicka2);
			printf("\n\n\n");
			zajednicka2=0;
			i+=1;
		}
		if(i==n){
			break;
		}
		
	}
	
	sleep(1);
	printf("Završio IZLAZNI PROCES\n");
	
}

int main(void){
	srand(time(NULL));
	//MASKIRANJE SIGINT
	struct sigaction act;

	act.sa_handler = brisi_sig_int;
	sigaction(SIGINT, &act, NULL);
	
	/* zauzimanje zajedničke memorije */
	Id = shmget(IPC_PRIVATE, sizeof(int), 0600);
 
    if (Id == -1){
       exit(1);  /* greška - nema zajedničke memorije */
    }
    ZajednickaVarijabla = (int *) shmat(Id, NULL, 0);
    *ZajednickaVarijabla = 0;
	zajednicka2=0;
	
	int n;//n se neće mijenjati pa ga mogu koristiti svi procesi bez problema, ne treba ga stavljati u zajednički
	scanf("%d",&n);
	//dretva radna i citanje
	if(fork()==0){
	    pthread_t thr_id;

	    

	    /* pokretanje dretvi */
	    if (pthread_create(&thr_id, NULL, radna, &n) != 0) {
		   printf("Greska pri stvaranju dretve!\n");
		   exit(1);
	    }
	   
	    //druga dretva-main
		izlazna(n);

	    pthread_join(thr_id, NULL);
	    
		exit(0);
	}
	//ulazni dio
	
	ulazna(n);

	
	(void) wait(NULL);
    brisi(0);
	return 0;
	
	
	
	
}