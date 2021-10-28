# load libraries, data
library(datasets)
data("iris")

# SPLOM plot 
# Base R plotting
pairs(iris[,1:4], col=iris[,5], lower.panel = NULL, cex = 2, pch = 20)
par(xpd = TRUE)
legend(x = 0.05, y = 0.4, cex = 1, legend = as.character(levels(iris[,5])), fill=unique(iris[,5]))
par(xpd = NA)