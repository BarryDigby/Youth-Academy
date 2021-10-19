# Load data, library
library(ggpubr)
library(datasets)
data("ToothGrowth")

# convert dose to a factor
ToothGrowth$dose <- as.factor(ToothGrowth$dose)

# Make boxplot 
ggboxplot(ToothGrowth,
          x="supp", 
          y="len", 
          bxp.errorbar = TRUE, 
          facet.by = "dose", 
          color="supp", 
          palette = "lancet", 
          ggtheme = theme_bw(), 
          xlab = "Ascorbic Acid Supplement", 
          ylab = "Tooth Length (mm)", 
          title = "Week 2 Worksheet" )