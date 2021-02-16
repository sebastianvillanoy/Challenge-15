# Import tidyverse
library(tidyverse)

## Deliverable 1 ##

# Import Mechacar data
mechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Create a linear model
model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar)
summary(model1)

## Deliverable 2 ##

# Import Suspension_coil data
suspension <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# Create Total Summary Table
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# Create Lot Summary Table
lot_summary<- suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary

## Deliverable 3 ##

# T Test across all Manufacturing Lots
t.test(suspension$PSI, mu = 1500)

# T Test on Manufacturing Lot 1
t.test(subset(suspension, Manufacturing_Lot == "Lot1", PSI), mu = 1500)

# T Test on Manufacturing Lot 2
t.test(subset(suspension, Manufacturing_Lot == "Lot2", PSI), mu = 1500)

# T Test on Manufacturing Lot 3
t.test(subset(suspension, Manufacturing_Lot == "Lot3", PSI), mu = 1500)

