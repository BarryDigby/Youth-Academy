# Libraries first :) 
library(ggpubr)

# construct toy dataset
df=data.frame(
    IRX4=c(11,13,2,1),
    OCT4=c(10,13,4,3 ),
    PAX6=c(1 ,3 ,10,9),
    row.names=c("patient1","patient2","patient3","patient4"))

# patient id as factor for colors
id <- as.factor(rownames(df))

# Make groups for the patients (they look like they fall into 2 groups.. )
group <- as.factor(c("Group_1", "Group_1", "Group_2", "Group_2"))

# Perform PCA
PCA <- prcomp(df, scale=F)
percentVar <- round(100*PCA$sdev^2/sum(PCA$sdev^2),1)
sd_ratio <- sqrt(percentVar[2] / percentVar[1])

# Store PCA results in dataframe with metadata
dataGG <- data.frame(PC1 = PCA$x[,1], PC2 = PCA$x[,2],
                    Patient = rownames(df),
                    Group   = group)

# Plot the patients in 2D space
ggscatter(dataGG, x="PC1", y="PC2",
                  color = "Patient", shape = "Group",
                  title = "PCA plot", size = 5,
                  xlab = paste0("PC1, VarExp: ", percentVar[1], "%"),
                  ylab = paste0("PC2, VarExp: ", percentVar[2], "%"),
                  ggtheme = theme_bw()) + 
                  theme(legend.position = "right") + 
                  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# Plot the dendogram 
d=dist(df)
hc=hclust(d,method="complete")
plot(hc)