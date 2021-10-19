# Load data, library
library(ggpubr)
library(datasets)
data("ToothGrowth")

# convert dose to a factor
ToothGrowth$____ <- as.factor(ToothGrowth$____)

# Make boxplot 
ggboxplot(ToothGrowth,
          x="_____", 
          y="____", 
          bxp.errorbar = ____, 
          facet.by = "_____", 
          color="_____", 
          palette = "_______", 
          ggtheme = ______(), 
          xlab = "________________", 
          ylab = "________________", 
          title = "_______________" )