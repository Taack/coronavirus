results <- c()
stdErr <- c()
sumHisto <- c()
numberOfSamples = length(data) - 11
for (i in 11:length(data)) {
  historyData <- data[1:i]
  sumHisto <- c(sumHisto, sum(historyData))
  fitDn <- tryCatch({nlsLM(historyData~a*pnorm(1:i, mean = m, sd = sd), start=list(m=10,sd=2,a=100))},
                    error = function(e) {print(e)})
  sdCur = as.list(coef(fitDn))$sd
  sdCurStdErr = summary(fitDn)$coefficients[1,1]
  print(sdCur)
  stdErr <- c(stdErr, sdCurStdErr)
  results <- c(results, sdCur)
}

plot(results, type = 'l')
points(stdErr)
sdMean <- weighted.mean(results, sumHisto * results / stdErr)
print('weightedSdMean')
print(sdMean)
abline(sdMean, 0)

invStdErrNorm <- normalize.vector(1/stdErr)

print('Var Std Err. Sd')
varStdErrSd <- var(abs(results - sdMean)*invStdErrNorm/length(stdErr))
print(varStdErrSd)
