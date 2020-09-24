
#dt = read.csv("Majors.csv", header = TRUE)
#table(dt$Bachelor)
#bachelor.freq <- table(dt$Bachelor)

#mydata = read.csv("Majors.csv")

#getwd()

read.csv(Majors.csv, header=TRUE)

help("read.csv")
?read.csv

data1 <- read.csv(file.choose(), header=T)
data1
d = Majors$Bachelor
d.freq = table(d)


#data2 <- read.table(file.choose(), header = T, sep=",")
#data2

#data3 <- read.delim(file.choose(), header = T)
#data3


# Frequency Distribution of Bachelors
test1 <- read.csv("/Users/shrutijoshi/Documents/Majors.csv",header=T)
test1
table(test1$Bachelor)
bachelor.freq <- table(test1$Bachelor)
bachelor.freq
bachelor.freq <- bachelor.freq[order(bachelor.freq, decreasing =TRUE)]
bachelor.freq


# Frequency Distribution of Masters
test2 <- read.csv("/Users/shrutijoshi/Documents/Majors.csv",header=T)
test2
table(test2$Master)
master.freq <- table(test2$Master)
master.freq
masterrelfreq <- master.freq/ nrow(master.freq)
masterrelfreq

#Joint frequency table

jointtable <- table(test1$Bachelor, test2$Master)
jointtable

#joint relative frequency distribution of the Bachelor’s degree and the Master’s degree

jointtable <- table(test1$Bachelor, test2$Master)
jointrelfreq <- jointtable/ nrow(jointtable)
jointrelfreq

#Bar plot of Bachelor's Degree

Barchartdata <- table(test1$Bachelor)
Barchartdata
barplot(Barchartdata, xlab = "Bachelors Degree", ylab = "Count")

#Pie Chart of Master's Degree

Piechartdata <- table(test2$Master)
Piechartdata
slices <- c(27, 9, 24, 8, 2, 24, 6)
lbls <- c("B", "CSE", "E", "H", "NSM", "O", "SBS")
pie(slices, labels = lbls, main = "Pie Chart of Master's Degree")

mytable <- table(iris$Species)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls,
    main="Pie Chart of Species\n (with sample sizes)")


Piechartdata <- table(test2$Master)
lbls <- paste(names(Piechartdata), "\n", Piechartdata, sep="")
pie(Piechartdata, labels = lbls, main = "PieChart")







