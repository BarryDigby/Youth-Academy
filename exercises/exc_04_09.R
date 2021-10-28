# load library, data
library(datasets)
data("iris")

# Use parcoord() in the MASS package
MASS::parcoord(iris[,1:4], col = iris[,5], var.label = TRUE, lwd = 2)

# Add a legend
par(xpd = TRUE)
legend(x = 1.2, y = 1.175, cex = 1,
       legend = as.character(levels(iris[,5])),
       fill = unique(iris[,5]), horiz = TRUE)