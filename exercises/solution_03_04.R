# load the data, library
library(ggpubr)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Plot GATA3 across cancer types
ggboxplot(expr, 
          x="cancer_type", 
          y="GATA3", 
          palette = "lancet", 
          fill = "cancer_type", 
          bxp.errorbar = T)