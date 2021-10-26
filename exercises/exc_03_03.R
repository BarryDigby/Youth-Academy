# load the data, library
library(ggpubr)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# set up comparison
MUC1_comparison <- list(c("BRCA", "LUSC"), c("OV", "LUSC"))

# now plot it
ggboxplot(expr, 
          x="cancer_type", 
          y="MUC1", 
          palette = "lancet", 
          fill = "cancer_type", 
          bxp.errorbar = T) + stat_compare_means(comparison = MUC1_comparison, label = "p.signif", method = "t.test")