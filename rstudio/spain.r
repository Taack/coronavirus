spain = c(1,2,8,10,17,30,36,55,86,133,196,294,342,533,638,803)
simulationSpain = pnorm(1:50, mean = 24, sd = 7) * 6503
plot(simulationSpain)
points(spain, pch = "*")
