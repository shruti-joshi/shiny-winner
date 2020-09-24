#Market-share-analysis company Net Applications monitors and reports on Internet browser usage.
#According to Net Applications, Google’s Chrome browser exceeded a 20% market share for the first time,
#with a 20.37% share of the browser market. 
#For a randomly selected group of 20 Internet browser users, answer the following questions.

#a.Compute the probability that exactly 8 of the 20 Internet browser users use Chrome as their Internet browser.

pbinom(8, 20, prob = 0.4)

#b.Compute the probability that at least 3 of the 20 Internet browser users use Chrome as their Internet browser.

dbinom(0, size =20, prob = 0.15)+
  + dbinom(1, size = 20, prob = 0.15)+
  + dbinom(2, size = 20, prob = 0.15)+
  + dbinom(3, size = 20, prob = 0.15)

#c.For the sample of 20 Internet browser users, compute the expected number,
#the variance and standard deviation of the number of Chrome users.

#ENumber = 20*.1
#ENumber

ENumber = mean(rbinom(20, 1, 0.2037))
ENumber

variance = sum(((rbinom(20, 1, 0.2037) - ENumber)^2)/19)
variance

standarddev = sqrt(variance)
standarddev




