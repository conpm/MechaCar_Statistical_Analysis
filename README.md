# MechaCar_Statistical_Analysis
The purpose of this repository is to use R in order to perform an analysis of car performance, specifically regarding the fuel effeciency of prototype vehicles from MechaCar.
## Linear Regression to Predict MPG
![LinearRegressionMPG](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/LinearRegressionMPG.PNG)
- Based on the multiple linear regression which was used to create the above output, we can see that the variables which provided a non-random amount of variance towards the MechaCars MPG were the vehicle_length, and ground_clearance due to their probabilities of random variance being so close to zero.  For the same reason, the intercept also provided a non-random amount of variance.
- If we assume a significance level of 5% or 0.05, we are able to reject our null hypothesis as our p-value is substantially lower than that at only 5.35e-11.  Therefore, the slope of our linear model is not considered to be zero, meaning there is a relationship between our chosen variables and MPG.
- Since the R-squared value is about 0.7 that means that our independent variables can account for about 70% of the variability of the dependent variable, the MPG.  This means that this linear model is at least somewhat effective at predicting the MPG of MechaCar prototypes.  However, due to the non-random variance of the intercept, it is likely that to get a more accurate prediciton we would need to account for more variables or adjust the scaling of our significant features (vehicle_length and ground_clearance).

## Summary Statistics on Suspension Coils
### Total Summary
![total_summary](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/total_summary.PNG)
- When looking at the total summary of all the lots, it appears as though the variance of the suspension coils is within the 100 pound per square inch limit as dictated by MechaCar.  However, if we look more closely at the lots, we can see that this is not an apt summary.
### Lot Summary
![lot_summary](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/lot_summary.PNG)
- When looking closer at each of the individual lots, we can see that the variance for lots 1 and 2 is well below the 100 pound per square inch limit, however, the variance in lot 3 is around 170, meaning that the variance of lot 3 is well beyond the accepted limit.  Additionally, the high variance of lot 3 makes the variance look much higher as a whole in the total summary, despite the variance being incredibly low in the other two lots.

## T-Tests on Suspension Coils
### T-Test of All Lots
![One_sample_ttest](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/One_sample_ttest.PNG)
- From looking at this T-Test of all the manufacturing lots, we can see that the mean PSI of the sample is 1498.78, and that the p-value is 0.06028.  Since this p-value is aboved the assumed siginificance level of 0.05 we are unable to reject the null hypothesis, meaning that the data is not significantly different from the given population mean of 1500 PSI.
### Lot 1 T-Test
![lot1_ttest](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/lot1_ttest.PNG)
- By looking at this T-Test of just manufacturing lot 1, we can see that the mean of Lot 1 is the same as the given population mean of 1500.  Since the means are the same, the p-value is 1 and the null hypothesis cannot be rejected.  This means based on this lot alone, there is no statistical difference at all between the sample mean and the given population mean for PSI.
### Lot 2 T-Test
![lot2_ttest](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/lot2_ttest.PNG)
- From this T-Test we can see that the mean PSI of the lot 2 sample was 1500.2, and that our p-value is 0.6072.  From this we can determine that we are once again unable to reject our null hypothesis as the mean of this sample does not have a statistically significant difference from the given population mean.
### Lot 3 T-Test
![lot3_ttest](https://github.com/conpm/MechaCar_Statistical_Analysis/blob/main/analysis/lot3_ttest.PNG)
- The T-Test of Lot 3 shows that, as in the previous lot summary, there is a big difference in the data from Lot 3 when compared to that of the other 2 lots.  The lot 3 mean PSI is shown to be 1496.14 with a p-value of 0.04168, since we are using the assumed significance value of 0.05, we are able to reject the null hypothesis.  This means that there is a statistically significant difference between the mean PSI of lot 3 and the given population mean.

- Based on these analyses, we have determined that there appears to have been some sort of problem at manufacturing Lot 3, which has caused their mean PSI to vary from the rest of the data.

## Study Design: MechaCar vs Competition
In order to quantify how the MechaCar performs against the competition, it would be necessary to collect data on the fuel efficiency of the competitions vehicles as that seems to be the primary point of focus for MechaCar.  In addition it would be useful to look into other metrics, such as cost (of both the vehicle and maintenance).  Using these metrics, as well as the established measurements of vehicle size and weight we can establish which car models would be considered "competition" to the MechaCar.  Then we should be able to perform a more comprehensive comparison of the fuel performance of the MechaCar as compared to their competition.
### Hypothesis
- MechaCar has a significantly higher average fuel efficiency (MPG) when compared to cars of a similar size and price.
### Null Hypothesis
- The MechaCar does significanly higher average fuel efficiency (MPG) when compared to cars of similar size and price.
### Statistical Test
- In order to test this hypothesis, I would first establish price and size ranges in order to compile cars which would be considered competiton for the MechaCar.  Then I would use t-testing in order to compare each car manufacturer against the mean MPG of all the cars, and this would result in providing average MPGs for each manufacturer (to compare easily) as well as p-values which could determine if each manufacturer has a statistically significant difference to the overall mean.
