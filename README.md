# coronavirus
Coronavirus Simulation

# Hypothesis

* Number of infected >> Number of dead people ;
* 2,5 Days to double infected population
* 10 days to suffer from infection (+/- 5 Days)
* Lethality of 0.002

# Usage

`source("~/github/coronavirus/rstudio/italy.r", chdir = T)`

# Simulation Results (as of 2020 / 03 / 20)

## Italy

* The number of simulated death should be 14272 +/- 2550
* The peak of death per day date 2020 / 03 / 25.2

## Spain
* The number of simulated death should be 9574 +/- 1978 (sd)
* The peak of death per day date 2020 / 03 / 30.7

# Simulation Results (as of 2020 / 03 / 21)

## Italy (added 4825)

### Via direct approx
* Variance is very high
* The number of simulated death should be 31710 +/- 10547 
* The peak of death per day date 2020 / 04 / 01.3

### Via deriv approx
* The number of simulated death should be 89730 +/- ??? (ATM)
* The peak of death per day date 2020 / 04 / 10

## Spain (added 1378)

* The number of simulated death should be 14136 +/- 2190
* The peak of death per day date 2020 / 03 / 31.1

