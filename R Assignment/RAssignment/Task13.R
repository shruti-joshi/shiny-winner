#Problem 13
#As part of a long-term study of individuals 65 years of age or older, sociologists and physicians 
#at the Wentworth Medical Center in upstate New York investigated the relationship between geographic 
#location and depression. A sample of 60 individuals, all in reasonably good health, was selected; 
#20 individuals were residents of Florida, 20 were residents of New York, and 20 were residents of 
#North Carolina. Each of the individuals sampled was given a standardized test to measure depression. 
#The data collected follow; higher test scores indicate higher levels of depression. These data are 
#contained in the file “Medical1.csv”. A second part of the study considered the relationship 
#between geographic location and depression for individuals 65 years of age or older who had a 
#chronic health condition such as arthritis, hypertension, and/or heart ailment. A sample of 60 
#individuals with such conditions was identified. Again, 20 were residents of Florida, 20 were 
#residents of New York, and 20 were residents of North Carolina. The levels of depression recorded
#for this study follow. These data are contained in the file named “Medical2.csv”.

#For the rest of this problem, we will solely use “Medical1.csv”. If you wish to look further, 
#particularly into two-way ANOVA, feel free to utilize the second data file on your own. 

#a)Use descriptive statistics to summarize the data from the first study; in particular, the 
#sample mean for each location, the grand mean, the sample size for each location, the sample size
#for the entire dataset, the sample standard deviation for each location, and the sample standard deviation for the entire dataset. 

medicaltable <- read.csv("Medical1.csv", header = T)
medicaltable

install.packages("fBasics")
library(fBasics)

basicStats(medicaltable)

#g)	Compute the p value for your test.

F = 5.26
df1 = 2
df2 = 57
pvalue <- 1-pf(F,df1=2, df2=57)
pvalue

#i)	Use the function aov() in R to run the test directly to confirm your results above are correct.
#If you need help with the function aov(), see http://www.r-tutor.com/elementary-statistics/analysis-variance/completely-randomized-design

matrix = as.matrix(medicaltable)
matrix
r = c(t(matrix))
r
f = c("Florida", "New York", "North Carolina")
k = 3
n = 20
t = gl(k, 1, n*k, factor(f)) 
t
a = aov(r ~ t)
summary(a)





