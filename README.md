# coronavirus
Coronavirus Normal Distribution Evaluation Results 

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

source('./approxnlsLM.r')
## Italy

* The number of simulated death should be 13681 +/- 1681
* The peak of death per day date 2020 / 03 / 25.2
* weighted mean = 10160


## Spain
* The number of simulated death should be 7923 +/- 4757
* The peak of death per day date 2020 / 03 / 29.5

# Simulation Results (as of 2020 / 03 / 21)

Variance is very high
## Italy (added 4825)

* The number of simulated death should be 25957 +/- 6271 
* The peak of death per day date 2020 / 03 / 31.3
* weighted mean = 12178

## Spain (added 1378)

* The number of simulated death should be 10728 +/- 5111
* The peak of death per day date 2020 / 03 / 30.1

