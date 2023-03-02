#ulazni stringovi
strStanja=str(input())
strAbeceda=str(input())
strPrihvatljivaStanja=str(input())
strPocStanje=str(input())

#filtriranje razmaka i \n
strStanja=strStanja.strip()
strAbeceda=strAbeceda.strip()
strPrihvatljivaStanja=strPrihvatljivaStanja.strip()
strPocStanje=strPocStanje.strip()

listaStanja=strStanja.split(",")
listaAbeceda=strAbeceda.split(",")
listaPrihvatljivih=strPrihvatljivaStanja.split(",")



#stvaranje liste prijelaza
lista=[]
#prazna lista da napunimo nasu
for i in range(len(listaStanja)):
    lista.append([])

#inputanje ostatka do EOF-a
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
            
            pomocna=[]
            pomocna.append(znak)
            pomocna.append(listaStringa[2])
            lista[indeks].append(pomocna)
                           
                       
    except EOFError:
        break

#Dohvatljiva
listaDohvatljivih=[strPocStanje]
def Dohvatljiva(listaDohvatljivih,stanje):
    #nadi indeks
    indeks=0
    for j in range(len(listaStanja)):
        if(stanje==listaStanja[j]):
            indeks=j
            break
        
    for i in range(len(lista[indeks])):
        if(lista[indeks][i][1] not in listaDohvatljivih):
            listaDohvatljivih.append(lista[indeks][i][1])
            Dohvatljiva(listaDohvatljivih,lista[indeks][i][1])
    return listaDohvatljivih


listaDohvatljivih=Dohvatljiva(listaDohvatljivih,strPocStanje)

#brisemo nedohvatljiva
def brisiNedoh(listaDohvatljivih):
    for i in range(len(listaStanja)):
        if(listaStanja[i]) not in listaDohvatljivih:
            listaStanja[i]=""
            lista[i]=[]
brisiNedoh(listaDohvatljivih)
#algoritam
def Rastavljac(listaListi,lista,listaAbeceda,listaStanja,listaPrihvatljivih,strPocStanje):
    listaListiCopy=[]
    for i in range(len(listaListi)):
        nasaLista=listaListi[i]
        listaFlaged=[]
        for j in range(len(nasaLista)):
            listaFlaged.append("0")
        
        for j in range(len(nasaLista)):
            if(listaFlaged[j]=="1"):
                #ako smo to stanje vec ukljucili
                continue
            
            indeksI=0
            stanjeI=nasaLista[j]
            listaSpremac=[stanjeI]
            listaFlaged[j]="1"
            for z in range(len(listaStanja)):
                if(stanjeI==listaStanja[z]):
                    indeksI=z
                    break
            
            for z in range(j+1,len(nasaLista)):
                indeksJ=0
                stanjeJ=nasaLista[z]
                for m in range(len(listaStanja)):
                    if(stanjeJ==listaStanja[m]):
                        indeksJ=m
                        break
                listaI=lista[indeksI]
                listaJ=lista[indeksJ]
                
                bul=False
                
                
                for m in range(len(listaI)):
                    prijelazI=listaI[m]
                
                    for n in range(len(listaJ)):
                        prijelazJ=listaJ[n]
                        znakI=""
                        znakJ=""
                        if(prijelazI[0]==prijelazJ[0]):
                            znakI=prijelazI[1]
                            znakJ=prijelazJ[1]
                            
                            for a in range(len(listaListi)):
                                listaProvjera=listaListi[a]
                                if not (znakI in listaProvjera) and (znakJ in listaProvjera):
                                     bul=True
                                    
                                    
                                
                                   
                                    
                if(bul==False):
                    
                    if stanjeJ not in listaSpremac:
                        listaSpremac.append(stanjeJ)
                        listaFlaged[z]="1"
            listaSpremac.sort()
            listaListiCopy.append(listaSpremac)
    
    if(len(listaListiCopy)==len(listaListi)):
       
        Printanje(listaListi,listaPrihvatljivih,listaAbeceda,strPocStanje,listaStanja,lista)
        
    else:#doslo je do promjene
        Rastavljac(listaListiCopy,lista,listaAbeceda,listaStanja,listaPrihvatljivih,strPocStanje)
        
            
                          
def Printanje(listaIstovjetnih,listaPrihvatljivih,listaAbeceda,strPocStanje,listaStanja,lista):
    listaFinalnihStanja=[]
    
    for i in range(len(listaIstovjetnih)):
        
        listaFinalnihStanja.append(listaIstovjetnih[i][0])
    listaFinalnihStanja.sort()
    for i in range(len(listaFinalnihStanja)):
        if(i<len(listaFinalnihStanja)-1):
            print(listaFinalnihStanja[i]+",",end="")
        else:
            print(listaFinalnihStanja[i])
    for i in range(len(listaAbeceda)):
        if(i<len(listaAbeceda)-1):
            print(listaAbeceda[i]+",",end="")
        else:
            print(listaAbeceda[i])
   
    listaPrihvatljivih2=[]
    
    for i in range(len(listaPrihvatljivih)):
        if listaPrihvatljivih[i] in listaFinalnihStanja:
            
            listaPrihvatljivih2.append(listaPrihvatljivih[i])
    if(len(listaPrihvatljivih2)>0):
        for i in range(len(listaPrihvatljivih2)):
            if(i<len(listaPrihvatljivih2)-1):
                print(listaPrihvatljivih2[i]+",",end="")
            else:
                print(listaPrihvatljivih2[i])
    else:
        print()
        
    
    listaProvjera=[]
    stanj=strPocStanje
    for k in range(len(listaIstovjetnih)):
        
        listaProvjera=listaIstovjetnih[k]
        
        if stanj in listaProvjera:
            stanj=listaProvjera[0]
            print(stanj)



    
    for i in range(len(listaStanja)):
        stanje=listaStanja[i]
        if stanje not in listaFinalnihStanja:
            lista[i]=[]

    for i in range(len(lista)):
        listic=lista[i]
        for j in range(len(listic)):
            if(listic[j][1] in listaFinalnihStanja):
                print(listaStanja[i]+","+listic[j][0]+"->"+listic[j][1])
            else:
                listaProvjera=[]
                stanj=listic[j][1]
                for k in range(len(listaIstovjetnih)):
                    listaProvjera=listaIstovjetnih[k]
                    if stanj in listaProvjera:
                        stanj=listaProvjera[0]
                print(listaStanja[i]+","+listic[j][0]+"->"+stanj)
            
    
            
    
    
                        
                





def Algoritam(listaPrihvatljivih, listaS,listaIstovjetnih,listaAbeceda,lista,listaStanja,strPocStanje):
    listaP=[]#prihvatljivi
    listaNp=[]
    for i in range(len(listaS)):
        if(listaS[i] in listaPrihvatljivih):
            listaP.append(listaS[i])
        else:
            listaNp.append(listaS[i])
    listaListi=[]
    listaListi.append(listaP)
    listaListi.append(listaNp)
    Rastavljac(listaListi,lista,listaAbeceda,listaStanja,listaPrihvatljivih,strPocStanje)
    
    
    
    
                        
        
            

                
        
                        
        
            
listaIstovjetnih=[]
                
        
    
Algoritam(listaPrihvatljivih,listaDohvatljivih,listaIstovjetnih,listaAbeceda,lista,listaStanja,strPocStanje)

