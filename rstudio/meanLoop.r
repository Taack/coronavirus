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
  mCur = as.list(coef(fitDn))$m
  mCurStdErr = summary(fitDn)$coefficients[1,2]
  print(mCur)
  stdErr <- c(stdErr, mCurStdErr)
  results <- c(results, mCur)
}

plot(results, type = 'l')
points(stdErr)
weightedMean <- weighted.mean(results, sumHisto * results / stdErr)
print('weightedMeanMean')
print(weightedMean)
abline(weightedMean, 0)
print(as.Date(startDate) + weightedMean)

invStdErrNorm <- normalize.vector(1/stdErr)

print('Var Std Err. Mean')
varStdErrMean <- var(abs(results - weightedMean)*invStdErrNorm/length(stdErr))
print(varStdErrMean)
