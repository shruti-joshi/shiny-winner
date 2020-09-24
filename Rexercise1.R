plot(iris)
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000", #Hex code for datalab.cc red
     pch = 19, # use solid circles for points
     main = "Iris: Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

#Plot Formulas with Plot()

plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3,  #Plot bell curve
     col= "#cc0000", #color=red
     lwd =5, #width of the line
     main = "Standard Normal Distribution", #Plot title
     xlab = "z-scores", #Label on x axis
     ylab = "Density") #label on y axis

library(datasets)
?mtcars
head(mtcars)
barplot(mtcars$cyl) #doesnt work
#Need a table with frequencies for each category
cylinders <- table(mtcars$cyl) #creates a table
barplot(cylinders) #barplot
plot(cylinders) #Default x-y plot

#Histograms
head(iris)

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#Histogram by group
#Put graphs in 3 rows and 1 column
#Histograms for each species using options

par(mfrow = c(3,1))
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "viginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")







