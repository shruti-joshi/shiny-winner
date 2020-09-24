#8.Suppose you have been hired by the Better Business Bureau (BBB) to investigate the settlement 
#ratio of the complaints they have received. You plan to select a sample of n complaints to 
#estimate the proportion of complaints the BBB is able to settle. We use p to denote the 
#percentage or proportion of complaints settled among all the complaints that the BBB has received. 

#a.Let Y be the random variable, which indicates whether a complaint is settled. Without loss of 
#generality, let Y be 1 if a complaint is settle, the probability of which is p; 0 if not settled. 
#What probability distribution does Y follow? Compute its mean and standard deviation.

#Y follows Bernouli distribution which is discrete probability distribution and takes either 
#1 or 0 with probability P or 1-P.

sd = sqrt(p*(1-p))
sd

#b.Now suppose you select a random sample of n complaints and find that p ̅ of them have been
#settled (not surprisingly, p ̅ is called the sample proportion). Assume the sample size n is
#sufficiently large. What do we know about the probability distribution of p ̅ (sampling distribution of the sample proportion)?
  
The Probability distribution is approximately a Normal Distribution.
Hence, if sample size is large, it will be

n*p >= 5
n*(1-p) >= 5

#c.Let’s apply the results above and derive some confidence intervals. Note that the population 
#proportion p is unknown. In order to compute the standard error σ_p ̅ , we substitute p ̅ for p
#. As long as the sample size n is sufficiently large, a normal distribution would approximate 
#the sample distribution of the sample proportion p ̅ well enough. Suppose the sample proportion you’ve 
#found is 0.6. Find a 95% confidence interval of the population proportion, if the sample size is 
#36, 100, and 400, respectively. What effect does the sample size n have on the resulting confidence interval?

# For 95% confidence interval for n=36 & p=0.6
#moe = z * sqrt(p*(1-p)/n)
moe = qnorm(sqrt(0.6*0.4/36))
moe
print(0.6+c(-moe,moe))

# For 95% confidence interval for n=100
moe = qnorm(sqrt(0.6*0.4/100))
moe
print(0.6+c(-moe,moe))

# For 95% confidence interval for n=400
moe = qnorm(sqrt(0.6*0.4/400))
moe
print(0.6+c(-moe,moe))

#It is often the case that we have a target for margin of error in mind and we want to know 
#the sample size needed to guarantee such a margin of error when the confidence level is given. 
#Use the formula n=(qnorm(1-α/2))^2/〖4m〗^2  to compute the sample sizes needed when the 
#respective value of m is 1%, 3%, and 5% and the respective confidence level is 90%, 95%, and 99%. 
#You may fill out the table below and round your answers up to an integer.

m = 0.01
α = 0.1
n = (((qnorm(1-α/2))^2)/4*m*m)
n
m = 0.03
α = 0.1
n = (((qnorm(1-α/2))^2)/4*m*m)
n
m = 0.05
α = 0.1
n = (((qnorm(1-α/2))^2)/4*m*m)
n

m=0.01
α = 0.05
n = (((qnorm(1-α/2))^2)/4*m*m)
n
m = 0.03
α = 0.05
n = (((qnorm(1-α/2))^2)/4*m*m)
n

m = 0.05
α = 0.05
n = (((qnorm(1-α/2))^2)/4*m*m)
n

m=0.01
α=0.01
n = (((qnorm(1-α/2))^2)/4*m*m)
n
m=0.03
α=0.01
n = (((qnorm(1-α/2))^2)/4*m*m)
n

m=0.05
α=0.01
n = (((qnorm(1-α/2))^2)/4*m*m)
n













