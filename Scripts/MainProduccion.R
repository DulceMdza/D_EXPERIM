# t- test dependientes 
# Dulce Maria Samaniego 
# semillas 
setwd("C:/Users/Usuario.PC14/Documents")
semillas <- read.csv("DulceMaria/Scripts/mainproduccion.csv", header = T)

#Kgsem
semillas$Kgsem <- as.factor(semillas$Kgsem)

#tiempo 
semillas$Tiempo <- as.factor(semillas$Tiempo)

#grafica boxplot 
boxplot(semillas$Tiempo , semillas$Kgsem)
