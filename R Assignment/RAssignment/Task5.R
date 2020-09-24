
#5.Television viewing reached a new high when the Nielsen Company reported a mean daily viewing time
#of 8.35 hours per household. Use a normal probability distribution with a standard deviation of 2.5
#hours to answer the following questions about daily television viewing per household. 

#a.What is the probability that a household views television more than 3 hours a day?

pnorm(3, mean = 8.35, sd = 2.5, lower.tail = FALSE)

#b.What is the probability that a household spends 5 – 10 hours watching television more a day?

pnorm(10, mean = 8.35, sd = 2.5) - pnorm(5, mean = 8.35, sd = 2.5)

#c.How many hours of television viewing must a household have in order to be in the top 3%
#of all television viewing households?

mean = 8.35
sd = 2.5
z = qnorm(0.97)
hours = (z*sd+mean)
hours




