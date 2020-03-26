deathApprox <- function(m, sd, a) {a*pnorm(1:length(data), mean = m, sd = sd)}
fitDn <- nlsLM(data~deathApprox(m, sd, a), start=list(m=10,sd=2,a=100))

print(summary(fitDn))

l = as.list(coef(fitDn))

peak = l$m
width = l$sd
amplitude = l$a
amplitudeStdErr = summary(fitDn)$coefficients[3,2]
devSr = dev ** (1/2)
print('Amplitude')
print(amplitude)
print('width')
print(width)
print('peak')
print(peak)
print(peak - length(data))
print(as.Date(startDate) + peak)
print('amplitudeStdErr')
print(amplitudeStdErr)

dataDates = 1:length(data)
dataPerDates = cbind(dataDates, data)
dfData = as.data.frame(dataPerDates)

simuDates = 1:60
simu = pnorm(1:60, mean = peak, sd = width) * amplitude
simuMax = simu*(1 + amplitudeStdErr/amplitude)
simuMin = simu*(1 - amplitudeStdErr/amplitude)
dSimu = dnorm(1:60, mean = peak, sd = width) * amplitude * 10
dSimuMax = dSimu*(1 + amplitudeStdErr/amplitude)
dSimuMin = dSimu*(1 - amplitudeStdErr/amplitude)
simuPerDates = cbind(simuDates, simu, simuMin, simuMax, dSimu, dSimuMin, dSimuMax)
dfSimu = as.data.frame(simuPerDates)

m <- merge(dfSimu, dfData, all.x=T, by=c(1))
m$simuDates <- as.Date(m$simuDates, origin = startDate)

#g <- ggplot(m, aes(x=simuDates))+geom_line(aes(y=simu))+geom_line(aes(y=simuMin, color = 'red'))+geom_line(aes(y=simuMax, color = 'blue'))
g <- ggplot(m, aes(x=simuDates))+geom_point(aes(y=data, color='Real Data'), col="steelblue", size=2)+
  geom_line(aes(y=simu))+
  geom_line(aes(y=simuMin, color = 'Simu. Min.'))+
  geom_line(aes(y=simuMax, color = 'Simu. Max.'))+
  scale_x_date(date_minor_breaks = "1 day", breaks = "7 day",
               labels = scales::date_format("%m-%d"),
               sec.axis = sec_axis(trans = ~ ., 
               labels = scales::date_format("%m-%d")))+
               geom_vline(xintercept = as.Date(startDate)+peak, colour = "darkGrey") +
  geom_text(aes(x=as.Date(startDate)+peak, label="\nDecrease", y=1000), colour="blue", angle=90, text=element_text(size=10)) +
  geom_text(aes(x=as.Date(startDate)+peak, label="Increase\n", y=1000), colour="red", angle=90, text=element_text(size=10))


print(g)

