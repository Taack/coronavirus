# since Feb 23
france = c(1,1,1,2,2,2,2,2,3,4,7,9,16,19,30,33,48,61,79,
           91,127,148,175,264,372,450,582)

population = 67000000
data = france
source('./approx3.r')
source('./helper.r')
simu = plotResults(data, vOrig, aApprox, mApprox, sdApprox)
printAnalysis(length(data), vOrig, aApprox, mApprox)
