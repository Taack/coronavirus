# d: dataset, m: mean, sd: width, a: aplitude

maxLetality = 0.1
numberOfDaysDouble = 3
durationMax <- as.integer(2*log(population, 2 ** (1 / numberOfDaysDouble)))

print('Max Duration:')
print(durationMax)

log2Population <- as.integer(log2(population * maxLetality))

print('Log2 Max Dead:')
print(log2Population)

mTab <- seq(0, durationMax, by = 0.5)
sdTab <- seq(1.0, (length(mTab) / 4), by = 0.2)

print(mTab)
print(sdTab)
vOrig = Inf

aApprox = 0
mApprox = 0
sdApprox = 0


for (sd in sdTab) {
  for(m in mTab) {
    pnFast <- pnorm(1:length(data), mean = m, sd = sd)
    
    n <- (log2Population - 1):1
    aTabPow <- 2 ** n
    aApproxCur = 2 ** log2Population
    vAtAApproxCur = Inf
    for (a in aTabPow) {
      v <- var(data - (pnFast * aApproxCur))
      vAp <- var(data - (pnFast * (aApproxCur + a)))
      vAm <- var(data - (pnFast * (aApproxCur - a)))
     
      
      if (v > vAp && vAm > vAp) {
        aApproxCur = aApproxCur + a
      } else if (v > vAm && vAp > vAm) {
        aApproxCur = aApproxCur - a
      }
      if (v < vAtAApproxCur) {
        aApproxCurMin = aApproxCur
        vAtAApproxCur = v
      }
    }
    if (vAtAApproxCur < vOrig) {
      sdApprox = sd
      mApprox = m
      aApprox = aApproxCurMin
      vOrig = vAtAApproxCur
    }
  }
}

