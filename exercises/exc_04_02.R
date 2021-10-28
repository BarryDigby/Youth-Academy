# must set up the dataframe again (new code block)
df=data.frame(
    IRX4=c(11,13,2,1),
    OCT4=c(10,13,4,3 ),
    PAX6=c(1 ,3 ,10,9),
    row.names=c("patient1","patient2","patient3","patient4"))

# create factor vector of each patient (used for colors)
id <- as.factor(rownames(df))

# Base R plotting
pairs(df, col=id, lower.panel = NULL, cex = 2, pch = 20)
par(xpd = TRUE)
legend(x = 0.05, y = 0.4, cex = 1, legend = as.character(levels(id)), fill=unique(id))
par(xpd = NA)