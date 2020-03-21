# d: dataset, m: mean, sd: width, a: aplitude

normApplitude <- function(d, m, sd) {
  d[length(d)] / pnorm(length(d):length(d), mean = m, sd = sd)
}

normVariance <- function(d, m, sd, a) {
  var(d - pnorm(1:length(d), mean = m, sd = sd) * a)
}

mTab = c(length(d):(length(d)+40))
sdTab = c(4:10)

print(mTab)
print(sdTab)
vOrig = Inf

aApprox = 0
mApprox = 0
sdApprox = 0

for (a in c(data[length(data)]:20000)) {
  for (sd in sdTab) {
    for(m in mTab) {
      v = normVariance(data, m, sd, a)
      if (v < vOrig) {
        sdApprox = sd
        mApprox = m
        aApprox = a
        vOrig = v
      }
    }
  }
}