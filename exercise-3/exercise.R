# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1

# install and load dplyr
install.packages("dplyr")
library("dplyr")

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)

# You should have have access to the vehicles data.frame


# Which Accura model has the best hwy MPG in 2015? (without method chaining)

car.2015 <- filter(vehicles, year == "2015")
acura.make <- filter(car.2015, make == "Acura")
best.model <- filter(acura.make, hwy == max(hwy))

# Which Accura model has the best hwy MPG in 2015? (nesting functions)

car.2015 <- filter(vehicles, year == "2015")
acura.make <- filter(filter(vehicles, year == "2015"), make == "Acura")
best.model <- filter(filter(vehicles, year == "2015"), make == "Acura"), hwy == max(hwy)

# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times

# Without chaining


# Nested functions


# Pipe operator


# Pretty similar...
