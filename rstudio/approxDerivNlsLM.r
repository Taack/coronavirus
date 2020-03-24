diffData <- diff(data)
fitDn <- nlsLM(diffData~a*dnorm(1:length(diffData), mean = m, sd = sd), start=list(m=10,sd=2,a=100))

print(summary(fitDn))

l = as.list(coef(fitDn))

peak = l$m
width = l$sd
amplitude = l$a
amplitudeStdErr = summary(fitDn)$coefficients[3,2]
devSr = dev ** (1/2)
print("***** Deriv Results Start ******")
print('Amplitude')
print(amplitude)
print('width')
print(width)
print('peak')
print(peak)
print(peak - length(data))
print('amplitudeStdErr')
print(amplitudeStdErr)
print("***** Deriv Results End   ******")

simu = dnorm(1:50, mean = peak, sd = width) * amplitude
plot(simu*(1 + amplitudeStdErr/amplitude), pch = "+", type = "l")
points(simu, pch = "o")
points(diffData, pch = "*")
points(simu*(1 - amplitudeStdErr/amplitude), pch = "-", type = "l")
