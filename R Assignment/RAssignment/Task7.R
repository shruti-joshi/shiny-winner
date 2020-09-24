
#The mean preparation fee H&R Block charged retail customers last year was $183. 
#Use this price as the population mean and assume the population standard deviation 
#of preparation fees is $50.

#a.Now we randomly select 30 H&R Block retail customers. What are the values of the mean 
#and the standard deviation of the sampling distribution of the sample mean?

#Mean is Sample mean as sample size is 30
mean = 183
sampmean = mean
sampmean

#Standard Error
x = runif(30)
x
length(x)
sd.p <- 50
stderror = function(x)
{
  sd.p/sqrt(length(x))
}
stderror(x)

#b.What is the probability that the mean price for a sample of 30 H&R Block retail customers is 
#within $8 (this value is generally called margin of error) of population mean? 
#What is the probability that the mean price for a sample of 50 H&R Block retail customers is 
#within $8 of population mean? What is the probability that the mean price for a sample of 100 
#H&R Block retail customers is within $8 of population mean?

# For sample size n = 30
sd.p = 50
print(pnorm(183+8, 183, sd.p/sqrt(30)) - pnorm(183-8, 183, sd.p/sqrt(30)))

# For sample size n = 50
sd.p = 50
print(pnorm(183+8, 183, sd.p/sqrt(50)) - pnorm(183-8, 183, sd.p/sqrt(50)))

# For sample size n = 100
sd.p = 50
print(pnorm(183+8, 183, sd.p/sqrt(100)) - pnorm(183-8, 183, sd.p/sqrt(100)))




#c.	What is the impact of sample size based on b) above?



#d.What sample size would you recommend to have at least a .95 probability that the sample mean 
#is within $8 of population mean?

z = qnorm(1-0.05/2)
sigma = 50
E = 8
n = z^2 * sigma^2 / E^2
n

#e.Now, let’s assume we don’t know the population mean; but we still know the population 
#standard deviation to be σ=$50. We randomly sampled 40 H&R Block retail customers and the 
#mean price is $183.What is the probability that the population mean is within $5 of the sample mean?

psd = 50

MeanProb =pnorm(5/(psd/40)) - pnorm(-5/(psd/40))
print(MeanProb)

#f.	We randomly sampled 100 H&R Block retail customers and the mean price is $183, 
#assuming the population standard deviation is still $50. 
#Construct a 90%, 95%, and 99% confidence interval of the population mean, respectively. 

# For 90% confidence interval
moe = qnorm(0.95)*5
print(183+c(-moe,moe))

# For 95% confidence interval
moe = qnorm(0.975)*5
print(183+c(-moe,moe))


# For 99% confidence interval
moe = qnorm(0.995)*5
print(183+c(-moe,moe))

#h.	When the population standard deviation is unknown, the best we can do is to replace it with 
#the sample standard deviation, s. Just like the sample mean is a random variable, so is the sample
#standard deviation s. The replacement of σ with s adds more variability. Some adjustment to the 
#Central Limit Theorem is thus necessary. It turns out that when the population standard deviation 
#is unknown and the sample size n is sufficiently large, the sample statistic t=(X ̅-μ)/(s/√n)
#approximately follows a t distribution with a degree of freedom n-1. As a result, when we look 
#for a confidence interval with σ unknown, we will replace normal distributions with t distribution. 
#Use this result to find a 92% confidence interval for the population mean price that the retail
#customers pay for, given the sample mean is $183, the sample standard deviation is $50, and the 
#sample size is 36. Comparing this result to that in question g), you should notice that the margin 
#of error is slightly larger when the population standard deviation is unknown.

moe = qt(0.96, 35)*50/sqrt(36)
n = (183+c(-moe, moe))
n











        

