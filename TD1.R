########################################################################################
#######               STATISTIQUES AVEC LE LOGICIEL R                         ##########
########################################################################################

########################################################################################
### NUMERO DU TD : 1
### NOM : JANDREY NATAL
### PRENOM : MIGUEL
### SECTION : 
########################################################################################

########################################################################################
### EXERCICE 1 
rm(list=ls()) #Cette instruction permet de nettoyer l'environnement de travail avant de
#démarrer un nouvel exercice. 

#Question 1
a<-1 
b<-0 

#Question 2 
c <- a + b 
# La variable c est de type numérique. Je peux le vérifier avec la fonction typeof: 
typeof(c)
#[1] "double"

#Question 3 
d=a/b 
typeof(d)
# [1] "double"
# Selon la sortie, d est un réel. Cela ne me parait pas logique, car la division par 0 
# n'est pas possible. En fair R interprète ce nombre d comme l'infini et le considère 
# comme un réel. 
d 
#[1] Inf

#Question 4 
# La fonction ls donne la liste des variables de l'environnement de travail. 
ls()
# [1] "a" "b" "c" "d"
# Ici il s'agit des 4 variables que l'ont vient de créer: a, b, c et d. 


#########################################################################################
### EXERCICE 2
rm(list=ls())


#Question 1


#Question 2


#Question 3


#########################################################################################
### EXERCICE 3
rm(list=ls())


#Question 1


#Question 2


#Question 3



#EXERCICE 4 

#Question 1

load("Surprise.Rdata")


#Question 2

setwd("U:/BureauWindows")

getwd()

dir()

x <- load("Surprise.Rdata")





