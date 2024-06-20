## code to prepare `DATASET` dataset goes here

# DEPENDENCIES ------------------------------------------------------------

library(palmerpenguins)

penguins <- palmerpenguins::penguins

usethis::use_data(penguins, overwrite = TRUE)
