#DULCE MARIA SAMANIEGO MENDOZA 
#25/05/23 

#IMPORTAR DATOS 

setwd("C:/Users/Usuario.PC14/Documents")
germi <- read.csv("DulceMaria/germi1.csv" , header = TRUE)
germi$TRAT <- as.factor(germi$TRAT)


#grafica 

boxplot(germi$PG ~ germi$TRAT, 
        col= "pink", 
        xlab = "TRATAMIENTO GERMINATIVO" , 
        ylab = "% GERMINACION")

#ordenar tramientos 
levels(germi$TRAT)
germi$TRAT <- factor(germi$TRAT, levels = c("ctrl", "EM", "RA", "AGC", "H2S04"))
levels(germi$TRAT)

tapply(germi$PG, germi$TRAT, mean)
tapply(germi$PG, germi$TRAT, var)

# ANOVA 
germi.aov <- aov(germi$PG ~germi$TRAT)
summary(germi.aov)

#PRUEBA DE TUCKEY 
TukeyHSD(germi.aov, conf.level = 0.95)

##entre EM- ctrl diferencia de 4% y SI hay dif 
##entre RA- ctrl diferencia de 5% y SI hay dif
##entre AGC- ctrl diferencia de 3.5% y SI hay dif 

plot(TukeyHSD(germi.aov), las =1, col="red")

#agregar letras de diferencia 

boxplot(germi$PG ~ germi$TRAT, 
        col="pink", 
        xlab = "TRATAMIENTO GERMINATIVO", 
        ylab = "% GERMINACION", 
        ylim = c(0,10))
text(1,4.2, "A", col="red")
text(2,8.3, "B", col="blue")
text(3,9.4, "B", col="blue")
text(4,7.4, "B", col="blue")
text(5,3.3, "A", col="red")

