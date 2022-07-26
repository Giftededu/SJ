# Model of Linear Regression 

library(tidyverse)

sci_data <- read_csv("data/sci-online-classes.csv") 

m1 <-lm(FinalGradeCEMS ~ TimeSpent + subject, data = sci_data)
summary(m1)

m2 <-lm(FinalGradeCEMS ~ TimeSpent + subject + total_points_earned, data = sci_data)
summary(m2)