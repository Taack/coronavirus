italy = c(1,
          2,
          3,
          7,
          11,
          12,
          17,
          21,
          29,
          41,
          52,
          79,
          107,
          148,
          197,
          233,
          366,
          463,
          631,
          827,
          1016,
          1266,
          1441,
          1809,
          2158,
          2503,
          2978,
          3405,
          4032
)
data = italy
source('./approx2.r')
simulationItaly = pnorm(1:50, mean = mApprox, sd = sdApprox) * aApprox
plot(simulationItaly*(1 + vOrig/simulationItaly[length(italy)]), pch = "+", type = "l")
points(simulationItaly, pch = "o")
points(italy, pch = "*")
points(simulationItaly*(1 - vOrig/simulationItaly[length(italy)]), pch = "-", type = "l")

print(aApprox)
print(aApprox * vOrig / simulationItaly[length(italy)])