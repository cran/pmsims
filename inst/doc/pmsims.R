## -----------------------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 6, fig.height = 4,
  warning = FALSE,
  message = FALSE
)

## -----------------------------------------------------------------------------
# install.packages("pmsims")
library(pmsims)

## -----------------------------------------------------------------------------
# set.seed(123)
# 
# binary_example <- simulate_binary(
#   signal_parameters = 20,
#   noise_parameters  = 0,
#   complexity = 1,
#   data_control = list(correlation = 0.3),
#   outcome_prevalence = 0.30,
#   maximum_achievable_cstatistic = 0.80,
#   model = "glm",
#   metric = "calibration_slope",
#   target_performance = 0.85,
#   n_reps_total = 1000,
#   mean_or_assurance = "assurance"
# )
# 
# binary_example

## ----Run binary---------------------------------------------------------------
# `binary_example` is the result of the call above, shipped with the package.
print(binary_example)

## -----------------------------------------------------------------------------
# plot(binary_example)

## -----------------------------------------------------------------------------
# continuous_example <- simulate_continuous(
#   signal_parameters = 15,
#   noise_parameters = 0,
#   complexity = 1,
#   data_control = list(correlation = 0.3),
#   maximum_achievable_rsquared = 0.50,
#   model = "lm",
#   metric = "calibration_slope",
#   target_performance = 0.95,
#   n_reps_total = 1000,
#   mean_or_assurance = "assurance"
# )
# 
# continuous_example

## -----------------------------------------------------------------------------
# `continuous_example` is the result of the call above, shipped with the package.
print(continuous_example)

## ----fig.alt="Plot showing learning curve for continuous outcome"-------------
plot(continuous_example)

