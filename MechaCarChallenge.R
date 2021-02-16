# Import tidyverse
library(tidyverse)

# Import Mechacar data
mechaCar <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Create a linear model
model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar)
summary(model1)

# Import Suspension_coil data
suspension <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# Create Total Summary Table
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary

# Create Lot Summary Table
lot_summary<- suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary



