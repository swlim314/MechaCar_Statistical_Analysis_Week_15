# MechaCar_Statistical_Analysis_Week_15
MechaCar is suffering from production troubles that are blocking the manufacturing team's progress. Based off this, I was tasked with
performing multiple linear regression to identify which variables best predicted mpg of the prototypes, collect summary statistics on the 
PSI of the supsension coils from the manufucating lots, run t-tests to determine if the manufacturing lots had any statistical differences
from the mean population, and design a statistical study to compare vehicle performance 
# Deliverable 1
## Linear Regression to Predict MPG
Attached below is the multiple linear regression model using R to predict MPG. 

![MechaCar Part 1 Summary](https://github.com/swlim314/MechaCar_Statistical_Analysis_Week_15/blob/01909cc30e35c9cb1afb9177da6be2c9b577ad81/MechaCar%20Part%201%20Summary.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Using  Pr(>|t|) value of less than 0.05 to showcase a statistically sginifcant relationship in relationship to our response variable,
it can be determined that both vehicle length and ground clearance have a non-random amount of variance (with values of 2.60e-8 and 5.21e-8).
Is the slope of the linear model considered to be zero? Why or why not? Looking at the p-value in our model, the value return is much
smaller than the assumed significance level of 0.05%, which means we can reject the null hypothesis. This indicates that the slope of this
model is not zero.
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The R-Square value returned by the linear regression is 0.7149, or 71%. This means it is relatively good at predicting MPG, although some
of the variables would need to be changed out as they were shown with the Pr(>|t|) to not have non-random variance.
# Deliverable 2
## Summary Statistics on Suspension Coils
Attached below is two images for the summary statistics on suspension coils, one that shows the manufacturing lot summary, and another 
that shows each lot tested individually.

![Total Summary](https://github.com/swlim314/MechaCar_Statistical_Analysis_Week_15/blob/01909cc30e35c9cb1afb9177da6be2c9b577ad81/Total%20Summary.png)

![Lot Summary](https://github.com/swlim314/MechaCar_Statistical_Analysis_Week_15/blob/01909cc30e35c9cb1afb9177da6be2c9b577ad81/Lot%20Summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Based on the manufacturing lot summary, the variance is 62.29 indicating that all manufacturing lots in total meet that design
specification. However, if you look at each lot individually, Lot 1 and 2 pass with a variance of only 0.98 and 7.5 respectively, while
lot 3 has a variance of 170.28. Lot 3 falls out of this design specification and any suspension coils coming out of it will have to be 
examined carefully.

# Deliverable 3
## T-Tests on Suspension Coils
Attached is the T-Test that was performed for the overall manufacturing lots, as well as the subsets.

![T-Test](https://github.com/swlim314/MechaCar_Statistical_Analysis_Week_15/blob/01909cc30e35c9cb1afb9177da6be2c9b577ad81/T-Test.png)

![T-Test Subsets](https://github.com/swlim314/MechaCar_Statistical_Analysis_Week_15/blob/01909cc30e35c9cb1afb9177da6be2c9b577ad81/T-Test%20Subsets.png)

Looking at the T-Test data, it confirms what was previously shown in the summary statistics. The overall t-test from the entire
manufacturing lot has a p-value of 0.06, higher than the necessary significance value of 0.05 needed t oreject the null hypothesis.
This is repeated in both the t-tests for lot 1 and 2, with p-values of 1 and 0.6. However, lot 2 has a p-value of 0.04, enough to
reject the null hypothesis, supporting the fact that this sample  mean and the presumed population mean are not staistically different.

# Deliverable 4
## Designed Study
A statistical study that can quantify how the MechaCar performs against the competition will be based on the following metrics.
What metric or metrics are you going to test? Price (gives an idea of how fully featured the car is), Model Year(would indicate how
technologically advanced the vehicle is), Class of Vehicle( SUV, Sports Vehicle, Sedan, etc), Horsepower (How well the vehicle
actually performs).
What is the null hypothesis or alternative hypothesis? The null hypothesis is that MechaCar is class leading based on the following 
faetures.
What statistical test would you use to test the hypothesis? And why? Based off what was performed during this R statistical analysis,
a multiple linear regression seems to be perfect to determine whether the metrics are valuable in figuring out the impact on our
independent variable.
What data is needed to run the statistical test? In that case, summary statistics would need to be found for each of the vehicles
competing against MechaCar.

