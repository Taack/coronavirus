# Since March 03
spain = c(1,2,8,10,17,30,36,55,86,133,196,294,342,533,638,831,1093)
data = spain
source('./approx2.r')
source('./approx2.r')
source('./helper.r')
simu = plotResults(data, vOrig, aApprox, mApprox, sdApprox)
printAnalysis(length(data), vOrig, aApprox, mApprox)
