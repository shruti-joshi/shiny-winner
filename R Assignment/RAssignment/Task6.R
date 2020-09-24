#6.Comcast Corporation is the largest cable television company, the second largest Internet 
#service provider, and the fourth largest telephone service provider in the United States. 
#Generally known for quality and reliable service, the company periodically experiences 
#unexpected service interruptions. On January 14, 2014, such an interruption occurred for the 
#Comcast customers living in southwest Florida. When customers called the Comcast office, a 
#recorded message told them that the company was aware of the service outage and that it was 
#anticipated that service would be restored in two hours. Assume that two hours is the mean 
#time to do the repair and that the repair time has an exponential probability distribution. 

#a.What is the probability that the cable service will be repaired in one hour or less?

pexp(1, rate = 1/2)

#b.What is the probability that the repair will take between one hour and two hours?

pexp(2, rate = 1/2) - pexp(1, rate = 1/2)

#c.For a customer who calls the Comcast office at 1:00 p.m., 
#what is the probability that the cable service will not be repaired by 5:00 p.m.?

prob = 1-(pexp(4, rate =1/2))
prob


