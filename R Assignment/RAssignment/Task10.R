#Par, Inc., is a major manufacturer of golf equipment. Management believes that Par’s market share 
#could be increased with the introduction of a cut-resistant, longer-lasting golf ball. Therefore, 
#the research group at Par has been investigating a new golf ball coating designed to resist cuts 
#and provide a more durable ball. The tests with the coating have been promising. One of the 
#researchers voiced concern about the negative effect of the new coating on driving distances. 
#Par would like the new cut-resistant ball to offer driving distances no worse than those of the 
#current-model golf ball. To compare the driving distances for the two balls, 40 balls of both 
#the new and current models were subjected to distance tests. The testing was performed with a 
#mechanical hitting machine so that any difference between the mean distances for the two models 
#could be attributed to a difference in the two models. The results of the tests, with distances 
#measured to the nearest yard, are in the file “Golf.csv”. Let the current-model golf balls be 
#population 1 and the new cut-resistant balls be population 2. Complete the following.

#a)Formulate and present the rationale for a hypothesis test that Par could use to compare the 
#driving distances of the current and new golf balls.

H0: μ1 = μ2
Ha: μ1 not equal to μ2
#Mean 1 and Mean 2 are the means of driving distances for two populations 

#b)	Provide descriptive statistical summaries of the data for each model; in particular, 
#the sample mean, the sample standard deviation, and the sample size for each model. 

golf <- read.csv("/Users/shrutijoshi/Documents/Study Docs/BAN 602/R Assignment/Golf.csv",header=T)
golf

current <- golf$Current
new <- golf$New
mean(current)
mean(new)
sd(current)
sd(new)
NROW(current)
NROW(new)

#c)	Compute the standard error for your test.

se <- (sqrt((sd(current)^2/NROW(current))+(sd(new)^2/NROW(new))))
se

#d)	Compute the degree of freedom for your test. 

Current sample size n1 = 40
New sample size n2 = 40
Degree of freedom = n1+n2-2 = 78


#e)	Compute the test statistic for your test.

data <- read.csv("Golf.csv")
data
c <- table(data$Current)
n <- table(data$New)
SE = sqrt((sd(c)^2/NROW(c))+(sd(n)^2/NROW(n)))
SE
testStatistic = (mean(c)-mean(n))/SE
testStatistic

#f)	Compute the p value for your test.

z = (mean(c)-mean(n))/SE
pvalue = 2*pnorm(z, lower.tail=FALSE) 
print(pvalue)

#g) g)	Suppose the significance level is set at 5%. What is your conclusion? 
#Provide a practical interpretation of your conclusion in this case.

#h)	Use the function t.test() in R to run the test directly to confirm your results above are correct. 

t.test(c, n, var.equal = TRUE)

t.test(c, var.equal = TRUE)

t.test(c,n)














