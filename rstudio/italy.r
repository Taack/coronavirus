italy = c(1,
          2,
          3,
          7,
          11,
          12,
          17,
          21,
          29,
          41,
          52,
          79,
          107,
          148,
          197,
          233,
          366,
          463,
          631,
          827,
          1016,
          1266,
          1441,
          1809,
          2158,
          2503,
          2978,
          3405
)
simulationItaly = pnorm(1:50, mean = 31, sd = 8) * 9571
plot(simulationItaly)
points(italy, pch = "*")
