########################################################################################
#######               STATISTIQUES AVEC LE LOGICIEL R                         ##########
########################################################################################

########################################################################################
### NUMERO DU TD : TD2
### NOM : JANDREY NATAL 
### PRENOM : MIGUEL
### SECTION : 
########################################################################################

########################################################################################
### EXERCICE 1 
rm(list=ls()) #Cette instruction permet de nettoyer l'environnement de travail avant de
#d√©marrer un nouvel exercice. 

#Question 1
 1:6
 
# L'instruction 1:6 nous donne une s√©quence de 1 √ 6.

 #Question 2 
seq(1,6)

sequence(6)

#Question 3 

1:6*2

# 1:6*2 multiplie chaque √©lement de la sequence 1:6 par 2


#Question 4 
1:(6*2)

# 1:(6*2) nous donne une sequence de 1 √† 12, car 12 c'est 6*2

#Question 5

#Sur la r√®gle de priorit√© des op√©rateurs : et *, je conclue que l'operateur de sequence est prioris√©, donc il faut utiliser les parenth√®ses si on veut plusieurs op√©rations.

#########################################################################################
### EXERCICE 2
rm(list=ls())
  

#Question 1 

couleurs <- c("vert", "bleu", "rouge", "jaune", "noir", "blanc")

couleurs

#Question 2
typeof(couleurs)

#Le vecteur couleurs c'est du type character.

#Question 3 

length(couleurs)

#La taille du vecteur est 6.

#Question 4 

coul.prim <- c(couleurs[2], couleurs[3], couleurs[4])

coul.prim

length(coul.prim)

#La taille du vecteur coul.prim c'est 3.

#Question 5

couleurs <- union(couleurs, c("rose"))
couleurs

#########################################################################################
### EXERCICE 3
rm(list=ls())


#Question 1

prix <- c(2.15, 2.23, 2.30, 2.34, 2.39, 2.42, 2.45, 2.50, 2.56, 2.63, 2.73, 2.84, 2.95, 3.00, 3.07, 2.18, 3.32, 3.35, 3.35, 3.42)

anees <- c(1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011)


#Question 2

typeof(prix)

typeof(anees)

length(prix)

length(anees)


#Question 3

mean(prix)

var(prix)

#Question 4

tableux <- data.frame(prix, anees)

tableux

#Question 5

tableux[which(tableux$prix<2.5),] 



#Question 6 

tableux[which(tableux$prix<3.10, tableux$anees>2000),]
    

#EXERCICE 4


setwd("U:/BureauWindows")

#Question 1


load("Titanic.RData") 
 
ls()
str(Titanic)

#Question 2
str(Titanic)
dim(Titanic)
length(Titanic$Class)
# Il y a 2201 passagers
 

#Question 3
#Il y a 4 types de classes dans la variable Class, 
# qui sont: crew = 0; first = 1; second = 2 ; third =3 .

# Question 4
typeof(Titanic$Class)
#la variable class est qualitative, on la transforme en facteur
#pour les variables qualitatives
Titanic$Class = as.factor(Titanic$Class) 
class(Titanic$Class) 

Titanic$Age = as.factor(Titanic$Age) 
class(Titanic$Age)

Titanic$Sex = as.factor(Titanic$Sex) 
class(Titanic$Sex) 

Titanic$Survived = as.factor(Titanic$Survived) 
class(Titanic$Survived) 


# Question 5 

sum(Titanic$Class == 1)  
#Il y avait 325 passagers de 1re classe; 

sum(Titanic$Class == 2)
#Il y avait 285 de passagers 2me classe; 

sum(Titanic$Class == 3)
#Il y avait 706 de passagers 3me classe; 


sum(Titanic$Class == 0)
#Il y avait 885 membres d'Èquipages ; 

#Question 6

(sum(Titanic$Age == 0))/2201
#La proportion d'Ènfants sur le Titanic Ètait de 4.95%

#Question 7 

sum(Titanic$Age == 0 & Titanic$Survived == 0)

# 52 entants sont morts sur le Titanic

#Question 8

(sum((Titanic$Age == 1 & Titanic$Sex == 1) & (Titanic$Survived == 1))) / (sum(Titanic$Survived == 1))
#La probabilitÈ de survivre pour un homme adulte c'est de 47.54%

(sum((Titanic$Age == 1 & Titanic$Sex == 1) & (Titanic$Survived == 1 & Titanic$Class == 1))) / (sum(Titanic$Survived == 1))
#La probabilitÈ de survivre pour un homme adulte de 1re classe  c'est de 8.02%

(sum((Titanic$Age == 1 & Titanic$Sex == 1) & (Titanic$Survived == 1 & Titanic$Class == 2))) / (sum(Titanic$Survived == 1))
#La probabilitÈ de survivre pour un homme adulte de 2me classe  c'est de 1.97%

(sum((Titanic$Age == 1 & Titanic$Sex == 1) & (Titanic$Survived == 1 & Titanic$Class == 3))) / (sum(Titanic$Survived == 1))
#La probabilitÈ de survivre pour un homme adulte de 3me classe  c'est de 10.54%

(sum((Titanic$Age == 1 & Titanic$Sex == 1) & (Titanic$Survived == 1 & Titanic$Class == 0))) / (sum(Titanic$Survived == 1))
#La probabilitÈ de survivre pour un homme adulte membre d'Èquipages  c'est de 27%


#Question 9

(sum((Titanic$Age == 1 & Titanic$Sex == 1) & (Titanic$Survived == 1 & Titanic$Class == 1))) / (sum(Titanic$Survived == 1)) > (sum((Titanic$Age == 1 & Titanic$Sex == 0) & (Titanic$Survived == 1 & Titanic$Class == 3))) / (sum(Titanic$Survived == 1))

#Non, c'est faux. Un homme de 1re classe a moins de chanche de survivre qu'une femme de 3me classe.
# P(Survivre / Femme 3me classe) = 10.69%
# P(Survivre / Homme 1re classe) = 8.02%