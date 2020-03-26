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
`install.packages("ggplot2")`  
`library(ggplot2)`  
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

Added Deriv Peak Estimation

## Italy (added 6078)

### Via Direct Extrapolation
* The number of simulated death should be 22686 (Std Err. 3013)
* The peak of death per day date 38.06751 (2020 / 03 / 29.32)
* Weighted death mean = 16503 (Cum Std Err. 7165)
* Weighted date mean = 34.45 (2020 / 03 / 26.45)
* Weighted sd mean = 9.03

### Via Deriv Extrapolation
* The number of simulated death should be 16547 (Std Err. 5166)
* The peak of death per day date 34.5 (2020 / 03 / 25.5)


## Spain (Added 2207, changed 1725 to 1813)

* The number of simulated death should be 24918 (Std Err. 11151)
* The peak of death per day date 31.28 (2020 / 04 / 2.28)
* Weighted death mean = 18769 (Cum Std Err. ???)
* Weighted date mean = 27.99 (2020 / 03 / 29,99)
* Weighted sd mean = 7.53

# Simulation Results (as of 2020 / 03 / 24)

## Italy (added 6820)

### Via Direct Extrapolation
* The number of simulated death should be 20526 (Std Err. 1929)
* The peak of death per day date 37.13 (2020 / 03 / 28.13)
* Weighted death mean = 16503 (Cum Std Err. 7165)
* Weighted date mean = 35.13 (2020 / 03 / 26.13)
* Weighted sd mean = 9.13

### Via Deriv Extrapolation
* The number of simulated death should be 17553 (Std Err. 4495)
* The peak of death per day date 35.08 (2020 / 03 / 26.08)

## Spain (Added 2696)

### Via Direct Extrapolation
* The number of simulated death should be 18818 (Std Err. 4873)
* The peak of death per day date 29.459 (2020 / 03 / 31.459)
* Weighted death mean = 18790 (Cum Std Err. ???)
* Weighted date mean = 28.6 (2020 / 03 / 29,6)
* Weighted sd mean = 7.64

### Via Deriv Extrapolation
* The number of simulated death should be 13535 (Std Err. 10219)
* The peak of death per day date 26.64 (2020 / 03 / 30.64)

# Simulation Results (as of 2020 / 03 / 25)

## Italy (added 7503)

### Via Direct Extrapolation
* The number of simulated death should be 18397 (Std Err. 1245)
* The peak of death per day date 36 (2020 / 03 / 28)
* Weighted death mean = 17809 (Cum Std Err. 6338)
* Weighted date mean = 35.39 (2020 / 03 / 26.39)
* Weighted sd mean = 9.16

### Via Deriv Extrapolation
* The number of simulated death should be 15235 (Std Err. 2446)
* The peak of death per day date 33.73 (2020 / 03 / 25.73)

## Spain (Rewrite complete sequence, Added 2991 and 3434)

### Via Direct Extrapolation
* The number of simulated death should be 29768 (Std Err. 4873)
* The peak of death per day date 32.91 (2020 / 04 / 04)
* Weighted death mean = ??? (Cum Std Err. ???)
* Weighted date mean = 33.46 (2020-04-05)
* Weighted sd mean = 8.53

### Via Deriv Extrapolation
* The number of simulated death should be 6437 (Std Err. 1822)
* The peak of death per day date 22.40 (2020 / 03 / 25)

# Simulation Results (as of 2020 / 03 / 26)
## Italy (added 8215)

### Via Direct Extrapolation
* The number of simulated death should be 17200 (Std Err. 857)
* The peak of death per day date 35.44 (2020 / 03 / 27)
* Weighted death mean = 17616 (Cum Std Err. 4791)
* Weighted date mean = 35.41 (2020 / 03 / 27)
* Weighted sd mean = 9.14

### Via Deriv Extrapolation
* The number of simulated death should be 15047 (Std Err. 1822)
* The peak of death per day date 33.62 (2020 / 03 / 25.62)
