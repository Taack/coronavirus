# coronavirus
Coronavirus Normal Distribution Evaluation Results with mean of evaluations. 

# Hypothesis

* Number of infected >> Number of dead people ;
* 2,5 Days to double infected population
* 10 days to suffer from infection (+/- 5 Days)
* Lethality of 0.002

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

Variance is very high
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

## Spain (modify 1376 to 1381, add 1725)
* The number of simulated death should be 12874 (Std Err. 4546)
* The peak of death per day date 27.35 (2020 / 03 / 29.35)
