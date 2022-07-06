
library(dplyr) 
library(tidyverse)

# Deliverable 1
mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_data))  



# Deliverable 2
sus_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- sus_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3
t.test((sus_data$PSI),mu=1500)
t.test(subset(sus_data, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(sus_data, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(sus_data, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
  


