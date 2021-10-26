# load library, dataset
library(ggpubr)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Subset the Dataframe (exclude BRCA)
subset_expr <- subset(expr, expr$cancer_type != "BRCA")

# Set up the comparison between OV and LUSC
gata3_comparison <- list(c("OV", "LUSC"))

# Create the Plot
ggboxplot(subset_expr, 
          x="cancer_type", 
          y="GATA3", 
          palette = "lancet", 
          fill = "cancer_type", 
          bxp.errorbar = T, 
          ggtheme = theme_bw(), 
          xlab = "", 
          ylab = "GATA3 Expression", 
          title = "Week 3 Worksheet") + stat_compare_means(comparison = gata3_comparison, label = "p.format", method = "t.test")