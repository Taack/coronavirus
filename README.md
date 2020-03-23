# coronavirus

Coronavirus Normal Distribution Evaluation Results with mean of evaluations. 

# Hypothesis

* Number of infected >> Number of dead people ;
* 2,5 Days to double infected population
* 10 days to suffer from infection (+/- 5 Days)
* Lethality of 0.2% (outside hospital)
* Lethality of 0.04% (inside hospital)
* 44 % of the population is over 50

# Usage

`install.packages("minpack.lm")`  
`library(minpack.lm)`  
`source("~/github/coronavirus/rstudio/italy.r", chdir = T)`  
`install.packages("ppls")`  
`library(ppls)`

# Simulation Results (as of 2020 / 03 / 20)

## Italy

* The number of simulated death should be 13681 (Std Err. 1681)
* The peak of death per day date 2020 / 03 / 25.2
* Weighted death mean = 10160 (Cum Std Err. 2765)
* Weighted date mean = 31 (2020 / 03 / 23)
* Weighted sd mean = 7.98

## Spain

* The number of simulated death should be 7923 (Std Err. 4757)
* The peak of death per day date 2020 / 03 / 29.5

# Simulation Results (as of 2020 / 03 / 21)


## Italy (added 4825)

* The number of simulated death should be 25957 (Std Err. 6271)
* The peak of death per day date 2020 / 03 / 31.3
* Weighted death mean = 12178 (Cum Std Err. 3995)
* Weighted date mean = 32 (2020 / 03 / 24)
* Weighted sd mean = 8.42

## Spain (added 1378)

* The number of simulated death should be 11206 (Std Err. 5511)
* The peak of death per day date 26.51 (2020 / 03 / 28.51)

# Simulation Results (as of 2020 / 03 / 22)

## Italy (added 5476)

* The number of simulated death should be 29021 (Std Err. 5780)
* The peak of death per day date 40.32 (2020 / 03 / 31.32)
* Weighted death mean = 14802 (Cum Std Err. 6113)
* Weighted date mean = 33,47 (2020 / 03 / 25.47)
* Weighted sd mean = 8.82

## Spain (modified 1376 to 1381, added 1725)

* The number of simulated death should be 12874 (Std Err. 4546)
* The peak of death per day date 27.35 (2020 / 03 / 29.35)

# Simulation Results (as of 2020 / 03 / 23)

## Italy (added 6078)

* The number of simulated death should be 22686 (Std Err. 3013)
* The peak of death per day date 38.06751 (2020 / 03 / 29.32)
* Weighted death mean = 16503 (Cum Std Err. 7165)
* Weighted date mean = 34.45 (2020 / 03 / 26.45)
* Weighted sd mean = 9.03
## Spain (Added 2207, changed 1725 to 1813)
* The number of simulated death should be 24918 (Std Err. 11151)
* The peak of death per day date 31.28 (2020 / 04 / 2.28)
* Weighted death mean = 18769 (Cum Std Err. ???)
* Weighted date mean = 27.99 (2020 / 03 / 29,99)
* Weighted sd mean = 7.53
