#A consumer research group is interested in testing an automobile manufacturer’s claim that a 
#new economy model will travel at least 25 miles per gallon of gasoline.

#a.	Provide a null and alternative hypothesis for the test.
H0 : μ ≥ 25
Ha : μ < 25


#b.Suppose a test on 25 cars of this model indicates an average of 24 mpg, with a sample standard 
#deviation of 3 mpg. Compute the value for the test statistic and the p-value.

xbar = 24
mu0 = 25
sigma = 3
n = 25
z = (xbar - mu0) / (sigma / sqrt (n))
z
pval = pt(z, 24)
pval

#c.	Suppose the significance level is 5%. Compute the critical value for the test statistic.
#What conclusion should we draw for the test? Provide a practical interpretation for this conclusion.

alpha = 0.05
qt(0.05 , 24)


#d.	Compute the critical value for the sample mean and determine the when we should reject H0 
#and when we should accept H0. 

z = -1.666
n = 25
sigma = 3
criticalvalue = z*sigma/sqrt(n)+25
criticalvalue

#Compute the probability of committing a Type II error (denoted as β) if the actual mileage 
#is 23 mpg as well as the power of the test. 

n = 25
s = 3
SE = s / sqrt(n) #Standard Error
SE
alpha = 0.05
mu0 = 25
q = mu0 + qt(alpha, df = n-1) * SE
q

#Probability of type II error is 

mu = 23            
beta = pt((q - mu)/SE, df=n-1, lower.tail=FALSE)
powerOfTest = 1-beta
powerOfTest














