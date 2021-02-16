# Import tidyverse
library(tidyverse)

# Import Mechacar_mpg.csv
mechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Create a linear model
model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar)
summary(model1)


