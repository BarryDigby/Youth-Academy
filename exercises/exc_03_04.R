# load the data, library
library(ggpubr)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Plot GATA3 across cancer types
ggboxplot(____, 
          x="___________", 
          y="_____", 
          palette = "lancet", 
          fill = "___________", 
          bxp.errorbar = T)