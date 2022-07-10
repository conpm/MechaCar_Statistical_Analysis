library(dplyr)

# Linear regression to predict MPG
# Import csv and read into dataframe
mpg_data <- read.csv(file='./Resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Perform linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mpg_data)

# Find the p-value and r-squared value
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mpg_data))

# Create visualizations for the trip analysis
# Import csv and read into dataframe
suspension_data <- read.csv(file='./Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create total summary dataframe using summarize()
total_summary <- suspension_data %>% summarize(Mean= mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create lot summaries using group_by()
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# T-Tests on suspension coils
t.test(suspension_data$PSI, mu=1500)
t.test(subset(suspension_data, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
