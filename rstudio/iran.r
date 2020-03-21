# Since Feb. 19
iran = c(2,2,4,6,8,12,16,19,26,34,43,54,66,77,92,108,124,
         145,194,237,291,354,429,514,611,724,853,988,1135,
         1284,1433)
data = iran
source('./approx2.r')
source('./helper.r')
simu = plotResults(data, vOrig, aApprox, mApprox, sdApprox)
printAnalysis(length(data), vOrig, aApprox, mApprox)
