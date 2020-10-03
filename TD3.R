########################################################################################
#######               STATISTIQUES AVEC LE LOGICIEL R                         ##########
########################################################################################

########################################################################################
### NUMERO DU TD : TD3
### NOM : JANDREY NATAL 
### PRENOM : MIGUEL
### SECTION : 
########################################################################################

########################################################################################
### EXERCICE 1 
rm(list=ls()) #Cette instruction permet de nettoyer l'environnement de travail avant de
#d√©marrer un nouvel exercice. 

#Question 2 
#La première ligne du tableau est la ligne 23. Oui, elle donne le nom des variables.
#Les colonnes sont séparées par des points-virgules.
#Il y a 22 lignes avant le d?but du tableau.


#Question 4
setwd('U:/Documents/statistiques_avec_r')


#Question 5

#setwd("/Users/miguel/Desktop")

titanic <- read.table('titanic.dat2.csv', header = TRUE, sep = ';', dec = ',', skip = 23)

titanic 

#Question 6 

head(titanic) 

tail(titanic) 

str(titanic) 

#Question 7

titanic2 <- read.table('titanic.dat3.csv', header = TRUE, sep = ';', dec = ',', skip = 23)

titanic2

head(titanic2) 

tail(titanic2) 

str(titanic2) 

#Question 8

titanic3 <- read.table('titanic.dat4.txt', header = TRUE, sep = ';', dec = ',', skip = 23)

titanic3

head(titanic3) 

tail(titanic3) 

str(titanic3) 


#EXERCICE 2

#Question 1 

library(datasets)

#Question 2 

iris = iris

iris 

#Question 3

plot(iris$Sepal.Length,iris$Sepal.Width,xlab=' Longueur des sepales ',ylab=' Largeur des sepales ',main='La longueur des sepales en fonction de la largeur des sepales',col=iris$Species)
points(iris$Sepal.Length, col=iris$Species)

#Question 4
legend( 'topright',c('setosa', 'versicolor', 'virginica'), col= c('black', 'red', 'green'), lty = c(1,2,3))

#Question 5
plot(iris$Species,iris$Sepal.Length, col=c(6,8,15)) 
 
#Question 6 
par(mfrow=c(2,2))
plot(iris$Sepal.Length, iris$Sepal.Width, 
      xlab = 'longueur des sepales', ylab = 'largueur des sepales', col = iris$Sepales, main = 'relation entre la longuer et la larguer')
plot(iris$Species, iris$Sepal.Length, col=c(6,8,15), main='dispersion')

plot(iris$Sepal.Length, iris$Petal.Length, xlab= 'longueur des sepales', ylab= 'longueur des petales', col=c(), main = 'relation')
 
plot(iris$Sepal.Length, iris$Petal.Width, xlab= 'longueur des sepales', ylab= 'largueur des petales', col=c(), main = 'relation')
 
#EXERCICE 3

#Question 1 

setwd("/Users/pedrofernandojandreynatal/Desktop")
valeurs=read.table("valeurs.csv",header=FALSE,sep=";",dec=",",skip=3)
anndec=c(1950,1950+1/12,1950+2/12,1950+3/12,1950+4/12,1950+5/12,1950+6/12,1950+7/12,1950+8/12,1950+9/12,1950+10/12,1950+11/12,1950+1)
anndec
#Table$anndec=Table$année+Table$(mois-1)/12
head(valeurs)
annees=valeurs$V1
annees
mois=(valeurs$V2-1)/12  
mois
anndec=annees+mois
anndec
plot(anndec,valeurs$V3,type="l",col="red")
points(anndec,valeurs$V4,type="l",col="blue",ylim=c(0,400))
lines(anndec,valeurs$v5,type="l",col="green")


