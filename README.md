# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

We performed multiple linear regression analysis on our dataset to determine what characteristics of the MechaCar impact MPG. To detemine the answers we asked ourselves the following questions:

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length, vehicle weight and ground clearance all provided a a non-random amount of variance to the mpg values meaning they have a significant impact on MPG. 

![LotSummary](/Images/Del1_linear_regression.png)


### Is the slope of the linear model considered to be zero?   Why or why not?
The p-value of the linear model is much smaller than our assumed significance level (0.05%) so we can say there is enough evidence to reject the null hypothesis,  which indicates that the slope of our linear model is not zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
Based on a mulitple r-squared value of 0.7, which means that ~71% of the variablilty of our dependent variable (MPG) is explained using this linear model, so we can say that this model does a fairly good job of predicting MPG. 

![LotSummary](/Images/Del1_linear_regression_summary.png)


## Summary Statistics on Suspension Coils

Based on our analysis the suspension coils across lots have a variance of 62.29, which meets the design specification that states the variance of the suspension coils must not exceed 100 pounds per square inch.

![LotSummary](/Images/TotalSummary.png)

However, upon further inspection of each lot specifically we see that Lot3 does not meet the design specification with with a variance of 170.28 - outside the allowable 100 PSI. 

![LotSummary](/Images/LotSummary.png)

## T-Tests on Suspension Coils

To determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch we ran t-tests against our suspension dataset, assuming a significance level of 0.05 percent.

Below are the results of each test:

- Mean PSI across all manufacturing lots is has a p-value of 0.06028.
![ttest](/Images/ttest.png)
- Mean PSI among Lot1 has a p-value of 1
![ttest](/Images/ttest_lot1.png)
- Mean PSI among Lot2 has a p-value of 0.6072
![ttest](/Images/ttest_lot2.png)
- Mean PSI among Lot3 has a p-value of 0.04168   
![ttest](/Images/ttest_lot3.png)


Across all lots and among Lot1 and Lot2 we do not have sufficient evidence to reject the null hypothesis, so we can say that the means are statistically similar. However, Lot3's p-value is below our 0.05 significance level so we would accept the null hypothesis and say that the means are statistically different. 


## Study Design: MechaCar vs Competition
With today's skyrocketing cost of fuel, MechaCar has a unique opportunity to take marketshare if it can be proven that their car gets better city MPGs than the competition. Using available data on the competition's city MPG, we will test the data against MechaCars MPG data.s


- <strong>What metric or metrics are you going to test?</strong>
We will test the average city miles per gallon of each car in the same class as the MechaCar to see how they differ. 
- <strong>What is the null hypothesis or alternative hypothesis?</strong>
Our null hypothesis is MechaCar does not get better city MPG than the competition.
- <strong>What statistical test would you use to test the hypothesis? And why?</strong>
We will create a summary table of the average city MPG across all cars in the same class and then run a t-test to see how MechaCar's MPG compares to the mean across all cars. We will also run a t-test against each car in the class individually to see how they compare. 


If based on the t-tests MechaCar's MPG is shown to be significantly different we can reject the null hypothesis and say that MechaCar has better city MPGs. If MechaCar's average MPG proves to be higher than the entire class of cars, and statistically significant, we can say that it gets best-in-class MPG and is a great option to save money on fuel expenses. We can also identify which, if any, cars it gets better MPGs than and create marketing attempting to take marketshare from those manufacturer's specifically. 


- What data is needed to run the statistical test?
We will need to get the city MPG data from the competition, which should be easily accessible and if not we can use an API to scrape this info from their websites to run the analysis. 










