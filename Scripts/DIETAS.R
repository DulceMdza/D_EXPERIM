#Dulce maria samaniego 
#Experimento ganancia en pesos (GP) BASADO EN DIFERENTES DIETAS 
#N iveles de factor: 4 (die12, die2, die3, die4)


die1 <- c(2.4, 2.2, 3.4, 1.6)
die2 <- c(2.2, 1.9, 1.7, 2.1)
die3 <- c(3.3, 1.3, 2.8, 2.1)
die4 <- c(1.6, 2.5, 1.4, 2.4)


GP <- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1,
        3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4) 
Trat <- gl(4,4,16, labels = c("die1", "die2","die3", "die4"))
bloque <- gl (4,4,16, labels = c("bajo", "normal", "SP", "OB"))
dietas <- data.frame(Trat, GP, bloque)

boxplot( dietas$GP ~ dietas$Trat,
        "col" = "salmon", 
        "xlab" = "dietas", 
       "ylab" = "ganancia en peso (Kg)")
tapply(dietas$GP, dietas$Trat, var)
fligner.test(dietas$GP, dietas$Trat)         
bartlett.test(dietas$GP, dietas$Trat)         

diet.aov <- aov(dietas$GP ~ dietas$Trat)
summary(diet.aov)


