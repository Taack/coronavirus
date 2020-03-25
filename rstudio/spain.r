# Since March 03
# Added 2182, mchanged 1725 to 1813 (from Wikipedia)
spain = c(1,2,3,8,10,17,
          30,36,55,86,133,196,294,
          342,533,638,831,1093,1381,1772,
          2311,2991)

startDate = ISOdate(2020, 3, 3)
population = 46660000
data = spain
source('./approxnlsLM.r')
