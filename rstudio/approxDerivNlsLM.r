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

dataDates = 1:length(diffData)
dataPerDates = cbind(dataDates, diffData)
dfData = as.data.frame(dataPerDates)

simuDates = 1:60
simu = dnorm(1:60, mean = peak, sd = width) * amplitude
simuMax = simu*(1 + amplitudeStdErr/amplitude)
simuMin = simu*(1 - amplitudeStdErr/amplitude)
simuPerDates = cbind(simuDates, simu, simuMin, simuMax)
dfSimu = as.data.frame(simuPerDates)

m <- merge(dfSimu, dfData, all.x=T, by=c(1))
m$simuDates <- as.Date(m$simuDates, origin = startDate)

#g <- ggplot(m, aes(x=simuDates))+geom_line(aes(y=simu))+geom_line(aes(y=simuMin, color = 'red'))+geom_line(aes(y=simuMax, color = 'blue'))
g <- ggplot(m, aes(x=simuDates))+geom_point(aes(y=diffData, color='Real Data'), col="steelblue", size=2)+
  geom_line(aes(y=simu))+
  geom_line(aes(y=simuMin, color = 'Simu. Min.'))+
  geom_line(aes(y=simuMax, color = 'Simu. Max.'))

print(g)


#simu = dnorm(1:50, mean = peak, sd = width) * amplitude
#plot(simu*(1 + amplitudeStdErr/amplitude), pch = "+", type = "l")
#points(simu, pch = "o")
#points(diffData, pch = "*")
#points(simu*(1 - amplitudeStdErr/amplitude), pch = "-", type = "l")
