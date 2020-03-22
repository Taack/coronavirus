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
weightedMean <- weighted.mean(results, sumHisto * results / stdErr)
print('weightedAmplitudeMean')
print(weightedMean)
abline(weightedMean, 0)

