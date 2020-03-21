# Since Feb. 29
usa = c(1,1,6,9,11,12,15,19,22,26,30,38,41,49,57,68,86,109,
        150,207,256,288)
population = 327000000
data = usa
source('./approx3.r')
source('./helper.r')
simu = plotResults(data, vOrig, aApprox, mApprox, sdApprox)
printAnalysis(length(data), vOrig, aApprox, mApprox)

