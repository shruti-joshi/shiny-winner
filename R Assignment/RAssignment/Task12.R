#12) A Bloomberg Businessweek subscriber study asked, “in the past 12 months, when traveling for 
#business, what type of airline ticket did you purchase most often?” A second question asked if 
#the type of airline ticket purchased most often was for domestic or international travel. 
#Sample data obtained are shown in the following table.

Type of Ticket	Domestic Flight	International Flight
First class	29	22
Business class	95	121
Economy class	518	135

#d)	At 5% significance level, compute the critical value for the test statistic and the p value 
#for the test. Draw your conclusion. 

testStatistic = 100.55
pValue<-pchisq(testStatistic, df=2, lower.tail=FALSE)
pValue
significancelevel=0.05 
criticalValue<-qchisq(significancelevel, df=2, lower.tail=FALSE)
criticalValue

#e)	Use the function chisq.test() in R to run the test directly to confirm your results above are correct. 

Data<- as.table(rbind(c(29,22), c(95,121),c(518,135)))
Data

chisq.test(Data)

