# load library, dataset
library(ggpubr)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Subset the Dataframe (exclude BRCA)
subset_expr <- subset(____, expr$cancer_type != "____")

# Set up the comparison between OV and LUSC
gata3_comparison <- list(c("__", "____"))

# Create the Plot
ggboxplot(subset_expr, 
          x="_________", 
          y="____", 
          palette = "______", 
          fill = "_________", 
          bxp.errorbar = T, 
          ggtheme = _______, 
          xlab = "", 
          ylab = "______________", 
          title = "_____________") + stat_compare_means(comparison = ___________, label = "_________", method = "t.test")