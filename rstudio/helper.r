printAnalysis <- function(ldata, variance, amplitude, peak) {
  print("Amplitude:")
  print(amplitude)
  print("Variance:")
  print(amplitude * variance / simu[length(data)])
  print(variance)
  print("Peak in days:")
  print(peak-ldata)
}

plotResults <- function(data, vOrig, aApprox, mApprox, sdApprox) {
  simu = pnorm(1:50, mean = mApprox, sd = sdApprox) * aApprox
  plot(simu*(1 + vOrig/simu[length(data)]), pch = "+", type = "l")
  points(simu, pch = "o")
  points(data, pch = "*")
  points(simu*(1 - vOrig/simu[length(data)]), pch = "-", type = "l")
  simu
}
