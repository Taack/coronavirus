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

# Simulation Results (as of 2020 / 03 / 20)

## Italy

* The number of simulated death should be 13681 (Std Err. 1681)
* The peak of death per day date 2020 / 03 / 25.2
* weighted death mean = 10160
* weighted date mean = 31 (2020 / 03 / 23)


## Spain
* The number of simulated death should be 7923 (Std Err. 4757)
* The peak of death per day date 2020 / 03 / 29.5

# Simulation Results (as of 2020 / 03 / 21)

Variance is very high
## Italy (added 4825)

* The number of simulated death should be 25957 (Std Err. 6271)
* The peak of death per day date 2020 / 03 / 31.3
* weighted death mean = 12178
* weighted date mean = 32 (2020 / 03 / 24)

## Spain (added 1378)

* The number of simulated death should be 10728 (Std Err. 5111)
* The peak of death per day date 2020 / 03 / 30.1

