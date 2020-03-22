deathApprox <- function(m, sd, a) {a*pnorm(1:length(data), mean = m, sd = sd)}
fitDn <- nlsLM(data~deathApprox(m, sd, a), start=list(m=10,sd=2,a=100))

print(summary(fitDn))

l = as.list(coef(fitDn))

peak = l$m
width = l$sd
amplitude = l$a
dev = deviance(fitDn)
devSr = dev ** (1/2)
print('Amplitude')
print(amplitude)
print('width')
print(width)
print('peak')
print(peak)
print('Dev')
print(dev)
print(devSr)

simu = pnorm(1:50, mean = peak, sd = width) * amplitude
plot(simu*(1 + devSr/simu[length(data)]), pch = "+", type = "l")
points(simu, pch = "o")
points(data, pch = "*")
points(simu*(1 - devSr/simu[length(data)]), pch = "-", type = "l")
