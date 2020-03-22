results <- c()
stdErr <- c()
sumHisto <- c()
approxMeanAmplitude = 0
numberOfSamples = length(data) - 11
for (i in 11:length(data)) {
  historyData <- data[1:i]
  sumHisto <- c(sumHisto, sum(historyData))
  fitDn <- tryCatch({nlsLM(historyData~a*pnorm(1:i, mean = m, sd = sd), start=list(m=10,sd=2,a=100))},
                    error = function(e) {print(e)})
  aCur = as.list(coef(fitDn))$a
  aCurStdErr = summary(fitDn)$coefficients[3,2]
  print(aCur)
  stdErr <- c(stdErr, aCurStdErr)
  results <- c(results, aCur)
}

plot(results, type = 'l')
points(stdErr)
amplitudeMean <- weighted.mean(results, sumHisto * results / stdErr)
print('weightedAmplitudeMean')
print(amplitudeMean)

invStdErrNorm <- normalize.vector(1/stdErr)

print('Var Std Err. Amplitude Weighted')
#varStdErrAmplitude <- var(abs(results - amplitudeMean)*(sum(stdErr)/(stdErr*mean(stdErr))))
varStdErrAmplitude <- var(abs(results - amplitudeMean)*invStdErrNorm/length(stdErr))
print(varStdErrAmplitude)

abline(amplitudeMean, 0)

