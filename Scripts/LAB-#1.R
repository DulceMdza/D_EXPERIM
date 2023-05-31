# Laboratorio 1 
# Dulce Maria 
# gastos 
celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
# gastos totales 
300 + 240 + 1527 + 400 + 1500 + 1833
5800 * 5
29000 * 2
gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
barplot(gastos,
        col = c("red", "red", "yellow", "red", "yellow", "yellow" ) ,
       main = "MIS GASTOS",
       ylim = c(0,2000) , xlab = "rubros" ,
       ylab = "Costos en MXP" ,
       names.arg = c("celular" , "transporte", "comestibles", "gimnasio", "alquiler", "otros" )
       )
