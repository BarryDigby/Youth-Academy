# Load data, library
library(ggpubr)
library(datasets)
data("ToothGrowth")

# Faceted boxplot 
ggboxplot(ToothGrowth,
          x = "supp",
          y = "len",
          facet.by = "dose",
          bxp.errorbar = TRUE)