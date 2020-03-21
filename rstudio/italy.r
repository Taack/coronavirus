# Since Feb. 21
italy = c(1,
          2,
          3,
          7,
          11,
          12,
          17,
          21,
          29,
          41,
          52,
          79,
          107,
          148,
          197,
          233,
          366,
          463,
          631,
          827,
          1016,
          1266,
          1441,
          1809,
          2158,
          2503,
          2978,
          3405,
          4032
)
population = 60000000
data = italy
source('./approx3.r')
source('./helper.r')
simu = plotResults(data, vOrig, aApprox, mApprox, sdApprox)
printAnalysis(length(data), vOrig, aApprox, mApprox)