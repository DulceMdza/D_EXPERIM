#dULCE MARIA SAMANIEG0 


#IMPORTAR 
setwd("C:/Users/Usuario.PC14/Documents")
plantas <- read.csv("DulceMaria/scripts/vivero.csv" , header = T)

plantas$Tratamiento <- as.factor(plantas$Tratamiento)

# Revisar datos  ----------------------------------------------------------

shapiro.test(plantas$IE)
bartlett.test(plantas$IE ~ plantas$Tratamiento)

# Independientes  ---------------------------------------------------------

t.test (plantas$IE ~ plantas$Tratamiento, var.equal=T)

# t. test simple ----------------------------------------------------------

mean(plantas$IE)
t.test(plantas$IE, mu = 0.90)
t.test(plantas$IE, mu = 0.85)
