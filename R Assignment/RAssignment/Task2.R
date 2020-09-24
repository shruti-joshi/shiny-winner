#read.csv(NFLTeamValue.csv, header=TRUE)

#help("read.csv")
#?read.csv

install.packages("plyr")
library(plyr)

#1.	Find the frequency distribution of the team revenue from 200 to 550 with the length of each interval being 50.
test1 <- read.csv("/Users/shrutijoshi/Documents/Study Docs/BAN 602/R Assignment/NFLTeamValue.csv",header=T)
test1
table(test1$Revenue)
revenue.freq <- table(test1$Revenue)
revenue.freq
range(revenue.freq)
#revenue.freq <- revenue.freq[order(revenue.freq, decreasing =TRUE)]
#revenue.freq
breaks = seq(200, 550, by=50)
breaks

#2.Create a histogram of the team revenue based on the frequency distribution above.

revenue.freq <- test1$Revenue
hist(revenue.freq)

#3. create relative frequency of team value

teamvalue <- test1$Value
breaks = seq(750, 2500, by=250)
breaks
teamvalue.freq = table(test1$Value)
teamvalue.freq
teamvalue.relfreq = teamvalue.freq / nrow(faithful)
teamvalue.relfreq

#4. Cumulative frequency

revenue.freq = table(test1$Revenue)
revenue.freq
revenue.cumfreq = cumsum(revenue.freq)
revenue.cumfreq

#5. cumulative frequency graph of the team revenue

revenue.freq = table(test1$Revenue)
revenue.freq
revenue.cumfreq = cumsum(revenue.freq)
revenue.cumfreq
plot(revenue.cumfreq, xlab = "Team Value Revenue", ylab = "Cum. Frequency", main = "cumulative frequency graph of the team revenue")
lines(revenue.cumfreq)

#6. the cumulative relative frequency distribution of the team value

teamvalue.freq = table(test1$Value)
#teamvalue.freq
teamvalue.cumfreq = cumsum(teamvalue.freq)
#teamvalue.cumfreq
teamvalue.cumrelfreq = teamvalue.cumfreq / nrow(test1)
teamvalue.cumrelfreq

#7. cumulative relative frequency graph of the team value.

teamvalue.freq = table(test1$Value)
#teamvalue.freq
teamvalue.cumfreq = cumsum(teamvalue.freq)
#teamvalue.cumfreq
teamvalue.cumrelfreq = teamvalue.cumfreq / nrow(test1)
#teamvalue.cumrelfreq
cumrelfreq0 = c(0, teamvalue.cumrelfreq)
plot(cumrelfreq0, main = "Cumulative Relative Frequency graph of Team Value", xlab = "Team Value", 
     ylab = "Cumulative Rel. Freq")
lines(cumrelfreq0)


#8.Create a stem-and-leaf plot of the team revenue.

revenue = test1$Revenue
stem(revenue)

#9.scatter plot of the team revenue against the team value.

revenue = test1$Revenue
teamvalue = test1$Value

plot(revenue, teamvalue, xlab = "Team Revenue", ylab = "Team Value", main = "Plot of Team Revenue against Team Value")


#10.Find the mean, median, all quartiles, 30th, 90th and 95th percentiles, range, and IQR of the team revenue.

revenue = test1$Revenue
mean(revenue)

median(revenue)

quantile(revenue)

quantile(revenue, c(.3, .9, .95))

max(revenue) - min(revenue)

IQR(revenue)

#11.Compute the variance of the team revenue. 
#Define a function named "sd.p" that computes the population standard deviation. 
#Use "sd.p" to compute the standard deviation of the team revenue.

revenue = test1$Revenue
var(revenue)

sd.p = sd(revenue)
sd.p

sd.p <- function(a){
  sqrt(sum((a-mean(a))^2/length(a)-1))
}
revenue = test1$Revenue
sd.p(revenue)

#12. box plot of the team value

teamvalue = test1$Value
boxplot(teamvalue, horizontal = TRUE, main ="Box Plot of Team Value")

#13.Define a function named "cov.p" that compute the population covariance. 
#Use "cov.p" to compute the covariance of the team revenue and the team value. 
#Compute the correlation coefficient of the team revenue and the team value.

#revenue = test1$Revenue
#teamvalue = test1$Value
#cov.p = cov(revenue, teamvalue)
#cov.p
#cor(revenue, teamvalue)

cov.p=function(a,b,c)
  {
  cov(a,b)*((nrow(c)-1)/nrow(c))
  }
revenue = test1$Revenue
teamvalue = test1$Value
cov.p(revenue, teamvalue, test1)

sd.p=function(a)
  {
  sd(a)*(sqrt((length(a)-1)/length(a)))
  }
cov_rev_val=cov.p(revenue, teamvalue, test1)
cor_rev_val=cov_rev_val/( sd.p(revenue) * sd.p(teamvalue))
cor_rev_val







































