# Uwe Hilgert
# Feb 22, 2015
# this will be the script for ggplot

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

head(iris)

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
myplot

myiris <- iris
myiris

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(size = 0.5)

ggplot(data = iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3)

ggplot(data = iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3)

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

ggplot(data = d2, aes(x = carat, y = price)) + geom_point()

ggplot(data = d2, aes(carat, price, color = price)) + geom_point(aes(shape = color), size = 3)

ggplot(data = d2, aes(carat, price, color = color)) + geom_point(size = 2)

head(d2)
mydims

library(MASS)

ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
mybirthwt <- birthwt
mybirthwt

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(size = 0.5) +
  facet_grid(Species ~ .)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(size = 0.5) +
  facet_wrap(~ Species)

library("ggthemes")

library("reshape2")

df  <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1")

ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot(width = 0.2) +
  
