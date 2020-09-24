#Problem 11
#The variance in a production process is an important measure of the quality of the process. 
#A large variance often signals an opportunity for improvement in the process by finding ways to 
#reduce the process variance. The following sample data show the weight of bags (in pounds) 
#produced on two machines: machine 1 and 2. 
#m1 = (2.95, 3.45, 3.50, 3.75, 3.48, 3.26, 3.33, 3.20, 3.16, 3.20, 3.22, 3.38, 3.90, 3.36, 3.25, 3.28, 3.20, 3.22, 2.98, 3.45, 3.70, 3.34, 3.18, 3.35, 3.12)

#m2 = (3.22, 3.30, 3.34, 3.28, 3.29, 3.25, 3.30, 3.27, 3.38, 3.34, 3.35, 3.19, 3.35, 3.05, 3.36, 3.28, 3.30, 3.28, 3.30, 3.20, 3.16, 3.33)

#a)Provide descriptive statistical summaries of the data for each model; in particular, the sample
#variance and the sample size for each machine. 

m1 = c(2.95, 3.45, 3.50, 3.75, 3.48, 3.26, 3.33, 3.20, 3.16, 3.20, 3.22, 3.38, 3.90, 3.36, 3.25, 3.28, 3.20, 3.22, 2.98, 3.45, 3.70, 3.34, 3.18, 3.35, 3.12)
m2 = c(3.22, 3.30, 3.34, 3.28, 3.29, 3.25, 3.30, 3.27, 3.38, 3.34, 3.35, 3.19, 3.35, 3.05, 3.36, 3.28, 3.30, 3.28, 3.30, 3.20, 3.16, 3.33)

mean(m1)
mean(m2)
var(m1)
var(m2)
length(m1)
length(m2)
sd(m1)
sd(m2)

#c)	Compute the test statistic.

t = var(m1)/var(m2)
t

#d)	Compute the p value. 

df1 = length(m1)-1
df1
df2 = length(m2)-1
df2

pValue = 2*pf(t, df1, df2, lower.tail = FALSE)
pValue

#e)	Use a .05 level of significance to compute both critical values for your test statistic. 

significanceLevel=0.05

criticalValueLower=qf(significanceLevel/2, df1, df2)
criticalValueLower

criticalValueUpper=qf(1-significanceLevel/2, df1, df2)
criticalValueUpper

#g)	Use the function var.test() in R to run the test directly to confirm your results above are correct. 

var.test(m1,m2)

#h)	Construct a 95% confidence interval for the variance of the weight of bags produced on machine 1. 

confidenceInterval = 0.05
df1
df2
cvlower <-qchisq(confidenceInterval/2,df1)
cvupper <-qchisq(1-confidenceInterval/2,df1)
cvlower
cvupper
cilower <-df1*var(m1)/ cvupper
ciupper <-df1*var(m1)/ cvlower
cilower
ciupper

#i)	Construct a 95% confidence interval for the standard deviation of the weight of bags produced on machine 2. 

confidenceInterval = 0.05
df2
cvlower2 <-qchisq(confidenceInterval/2,df2)
cvupper2 <-qchisq(1-confidenceInterval/2,df2)
cvlower2
cvupper2
cilower2 <-(df2*var(m2)/cvupper2)
ciupper2 <-(df2*var(m2)/cvupper2)
cilower2
ciupper2
sdlower <- (sqrt(cilower2))
sdlower
sdupper <- (sqrt(ciupper2))
sdupper







