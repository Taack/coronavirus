deathApprox <- function(m, sd, a) {a*pnorm(1:length(data), mean = m, sd = sd)}

results <- c(0)
stdErr <- c(0)
for (i in 11:length(data)) {
  historyData <- data[1:i]
  fitDn <- tryCatch({nlsLM(historyData~a*pnorm(1:i, mean = m, sd = sd), start=list(m=10,sd=2,a=100))},
                    error = function(e) {print(e)})
  print(as.list(coef(fitDn))$a)
  stdErr <- c(stdErr, summary(fitDn)$coefficients[3,2])
  results <- c(results, as.list(coef(fitDn))$a)
}

plot(results, type = 'l')
points(stdErr)