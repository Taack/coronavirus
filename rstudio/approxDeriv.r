# d: dataset, m: mean, sd: width, a: aplitude
vOrigDeriv = Inf

aApproxDeriv = 0
mApproxDeriv = 0
sdApproxDeriv = 0

dataDeriv <- convolve(data, c(-1,1), type= 'filter')

for (sd in sdTab) {
  for(m in mTab) {
    dnFast <- dnorm(1:length(dataDeriv), mean = m, sd = sd)
    
    n <- (log2Population - 1):1
    aTabPow <- 2 ** n
    aApproxCur = 2 ** log2Population
    vAtAApproxCur = Inf
    for (a in aTabPow) {
      v <- var(dataDeriv - (dnFast * aApproxCur))
      vAp <- var(dataDeriv - (dnFast * (aApproxCur + a)))
      vAm <- var(dataDeriv - (dnFast * (aApproxCur - a)))
      
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
    if (vAtAApproxCur < vOrigDeriv) {
      sdApproxDeriv = sd
      mApproxDeriv = m
      aApproxDeriv = aApproxCurMin
      vOrigDeriv = vAtAApproxCur
    }
  }
}
print('sdApproxDeriv: ')
print(sdApproxDeriv)
print('mApproxDeriv: ')
print(mApproxDeriv)
print('aApproxDeriv: ')
print(aApproxDeriv)
print('vOrigDeriv: ')
print(vOrigDeriv)
