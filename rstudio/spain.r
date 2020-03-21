spain = c(1,2,8,10,17,30,36,55,86,133,196,294,342,533,638,831,1093)
data = spain
source('./approx2.r')
simulationSpain = pnorm(1:50, mean = mApprox, sd = sdApprox) * aApprox
plot(simulationSpain*(1 + vOrig/simulationSpain[length(spain)]), pch = "+", type = "l")
points(simulationSpain, pch = "o")
points(spain, pch = "*")
points(simulationSpain*(1 - vOrig/simulationSpain[length(spain)]), pch = "-", type = "l")

print(aApprox)
print(aApprox * vOrig / simulationSpain[length(spain)])