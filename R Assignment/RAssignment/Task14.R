#Problem 14)As part of a study on transportation safety, the U.S. Department of Transportation 
#collected data on the number of fatal accidents per 1000 licenses and the percentage of licensed 
#drivers under the age of 21 in a sample of 42 cities. Data collected over a one-year period follow.
#These data are contained in the file named “Safety.csv”.

#a)	Find the sample mean and standard deviation for each variable. Round your answers to the 
#nearest thousandth.

safetytable = read.csv("Safety.csv", header = T)
safetytable
basicStats(safetytable)

#b)	Use the function lm() in R to run a simple linear regression model on the data provided. 
#Use the function summary() in R to generate the regression output. Use the function anova() in R 
#to generate the corresponding ANOVA table. You ought to be able to determine which is the 
#dependent variable and which is the independent variable in this SLR model. If you need help with
#lm() function, see http://www.r-tutor.com/elementary-statistics/simple-linear-regression/estimated-simple-regression-equation

lm.safetytable = lm(Fatal.Accidents.per.1000 ~ Percent.Under.21, data = safetytable)
summary(lm.safetytable)

anova(lm.safetytable)

#j)	Suppose we want to develop a 95% confidence interval for the average number of fatal accidents
#per 1000 licenses for all the cities with 10% of drivers under age 21. Compute the t value and 
#the margin of error needed for this confidence interval. (Show your work; Round to the nearest thousandth)

sd = 0.114
tvalue = qt((1+0.95)/2, 40) 
tvalue
moe = tvalue*sd
moe


