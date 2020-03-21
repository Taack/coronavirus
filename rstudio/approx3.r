# d: dataset, m: mean, sd: width, a: aplitude

mTab = c(0:(length(data)+100))
sdTab = c(1:100)

print(mTab)
print(sdTab)
vOrig = Inf

aApprox = 0
mApprox = 0
sdApprox = 0

for (sd in sdTab) {
  for(m in mTab) {
    pnFast = pnorm(1:length(data), mean = m, sd = sd)
    
    # 2**20 == 1048576
    n <- 25:1
    aTabPow <- 2 ** n
    aApproxCur = 2 ** 26
    vAtAApproxCur = Inf
    for (a in aTabPow) {
      v = var(data - (pnFast * aApproxCur))
      vAp = var(data - (pnFast * (aApproxCur + a)))
      vAm = var(data - (pnFast * (aApproxCur - a)))
     
      
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

