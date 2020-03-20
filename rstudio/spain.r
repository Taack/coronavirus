spain = c(1,2,8,10,17,30,36,55,86,133,196,294,342,533,638,803)
simulationSpain = pnorm(1:30, mean = 20.12, sd = 5.09) * 1600 / 0.4
plot(simulationSpain)
points(spain, pch = "*")
