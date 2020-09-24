
#Over 500 million tweets are sent per day. 
#Assume that the number of tweets per hour follows a Poisson distribution and 
#that Bob receives on average 7 tweets during his lunch hour.

#a.What is the probability that Bob receives no tweets during his lunch hour?
  
ppois(0, lambda = 7) #lower tail

ppois(0, lambda = 7, lower = FALSE) #upper tail

#b.What is the probability that Bob receives at least 4 tweets during his lunch hour?

prob <- ppois(4, lambda = 7, lower.tail = FALSE)
prob


#c.What is the expected number of tweets Bob receives during the first 30 minutes of his lunch hour?
#What is the probability that Bob receives no tweets during the first 30 minutes of his lunch hour?

#Expected number during 30 mins

ExNum = (7/60)*30
ExNum

#No tweets during 30 mins of lunch
ppois(0, lambda = 3.5)



