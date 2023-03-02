#input prvih 5 redaka i stvaranje pocetnih lista
stringUlaznihNizova=str(input())
stringUlaznihStanja=str(input())
stringUlaznihAbeceda=str(input())
stringSkupValjanih=str(input())
stringTrenutnoStanje=str(input())

#filtracija od zaostalih \n i razmaka
stringUlaznihNizova.strip()
stringUlaznihStanja.strip()
stringUlaznihAbeceda.strip()
stringSkupValjanih.strip()
stringTrenutnoStanje.strip()

#listaStanja
listaStanja=stringUlaznihStanja.split(",")
#listaAbecede
listaAbecede=stringUlaznihAbeceda.split(",")

#stvaranje liste sto je najbitnija u kojoj se nalaze svi prijelazi itd itd itd
lista=[]
#prazna lista da napunimo nasu
for i in range(len(listaStanja)):
    lista.append([])

#inputanje ostatka linija do EOF-a i punjenje liste
while True:
    try:
        stringUlazni=str(input())
        #ciscenje stringa da se meni svida
        stringUlazni=stringUlazni.replace(","," ")
        stringUlazni=stringUlazni.replace("-"," ")
        stringUlazni=stringUlazni.replace(">","")
        listaStringa=stringUlazni.split(" ")
        if(len(listaStringa)>1):#PROMJENA
            stanje=listaStringa[0]
            znak=listaStringa[1]
            #nadi indeks
            indeks=0
            for j in range(len(listaStanja)):
                if(stanje==listaStanja[j]):
                    indeks=j
                    break
            for i in range(2,len(listaStringa)):
                if(listaStringa[i]=="#"):
                    continue
                pomocna=[]
                pomocna.append(znak)
                pomocna.append(listaStringa[i])
                lista[indeks].append(pomocna)
                           
                       
    except EOFError:
        break
    
#lista trenutnih stanja

listaTrenutnihStanja=[stringTrenutnoStanje]

#lista unosa
listaUnosa=stringUlaznihNizova.split("|")

#FUNKCIJA

def funkc(listaTrenutnihStanja,listaTrenutna2,znak,stanje,jeLiPocetno,pronadeno):#stanje pomaze kod rekurzije
    indeks=0
    if(listaTrenutnihStanja[0]=="#"):
        listaTrenutna2.append("#")
        return
    if(znak!="$"):
        
        for i in range(len(listaTrenutnihStanja)):
            
            stanje=listaTrenutnihStanja[i]
            #indeks
            for j in range(len(listaStanja)):
                if(stanje==listaStanja[j]):
                    indeks=j
                    break
            #nasli indeks
            #je li ima definiran prijelaz za znak
            if(len(lista[indeks])!=0):#u slucaju da je prazno
                for j in range(len(lista[indeks])):
                    if(lista[indeks][j][0]==znak):
                        if(lista[indeks][j][1] not in listaTrenutna2):
                            listaTrenutna2.append(lista[indeks][j][1])
                        
                        pronadeno=1
                       
                        stanje=lista[indeks][j][1]
                        
                        #odi vidit ima li epsilon prijelaza za pronadeno stanje
                        funkc(listaTrenutnihStanja,listaTrenutna2,"$",stanje,jeLiPocetno,pronadeno)

                
                        
    elif(znak=="$"):
        #indeks
        for j in range(len(listaStanja)):
            if(stanje==listaStanja[j]):
                indeks=j
                
                break
        
                    
        #je li ima definiran prijelaz za znak $
        if(len(lista[indeks])!=0):#u slucaju da je prazno
            for j in range(len(lista[indeks])):

                if(lista[indeks][j][0]==znak):
                    
                    if(lista[indeks][j][1] not in listaTrenutna2):
                        
                        listaTrenutna2.append(lista[indeks][j][1])
                        
                    
                        pronadeno=1#PROMJENA,OVO SAN SVE TABA U DESNO,TEST 33
                        if(stanje!=lista[indeks][j][1]):
                            
                            stanje=lista[indeks][j][1]
                            
                            #odi vidit ima li epsilon prijelaza
                            funkc(listaTrenutnihStanja,listaTrenutna2,"$",stanje,jeLiPocetno,pronadeno)
                        
    
    if(pronadeno==0 and len(listaTrenutna2)==0):
        listaTrenutna2.append("#")
        return
def epsilon_prvi(stanje):
    znak="$"
    #indeks
    for j in range(len(listaStanja)):
        if(stanje==listaStanja[j]):
            indeks=j
            
            break
    if(len(lista[indeks])!=0):#u slucaju da je prazno
        for j in range(len(lista[indeks])):
            if(lista[indeks][j][0]==znak):
                
                if(lista[indeks][j][1] not in listaTrenutnihStanja):
                    
                    listaTrenutnihStanja.append(lista[indeks][j][1])
                    if(stanje!=lista[indeks][j][1]):#PROMJENA,ovo se TABA desno
                        stanje=lista[indeks][j][1]
                        epsilon_prvi(stanje)
                
#OBRADA RETKA
def obradiRedak(listaRetka,listaTrenutnihStanja):
    listaTrenutna2=[]
    jeLiPocetno=1
    pronadeno=0
    epsilon_prvi(stringTrenutnoStanje)
    for i in range(len(listaRetka)+1):
        listaTrenutna2=[]
        pronadeno=0
        if(i<len(listaRetka)):
            znak=listaRetka[i]
            listaTrenutnihStanja.sort()
            
            print(",".join(listaTrenutnihStanja)+"|",end="")
            funkc(listaTrenutnihStanja,listaTrenutna2,znak,"",jeLiPocetno,pronadeno)
            jeLiPocetno=0
            listaTrenutnihStanja=[]
            for j in range(len(listaTrenutna2)):
                listaTrenutnihStanja.append(listaTrenutna2[j])
        else:
            listaTrenutnihStanja.sort()
            print(",".join(listaTrenutnihStanja))


for i in range(len(listaUnosa)):
    listaRetka=listaUnosa[i].split(",")
    listaTrenutnihStanja=[stringTrenutnoStanje]
    obradiRedak(listaRetka,listaTrenutnihStanja)
