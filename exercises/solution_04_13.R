# load library and dataset
library(pheatmap)
library(gplots)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Calculate distance metrics. 
dmat <- dist(expr[,2:6], method = "euclidean")

# This dataframe links each sample name to its cancer type
annotdf <- data.frame(row.names = rownames(as.matrix(expr)),
                      Cancer   = expr[,1] )

# Must make colors so we can see which group a sample belongs to
ann_col <- list(Cancer = c(BRCA = "darkorange2", 
                           LUSC = "forestgreen",
                           OV = "black"))

# plot heatmap
pheatmap(as.matrix(dmat), 
         clustering_distance_rows = dmat, 
         clustering_distance_cols = dmat,
         show_rownames = F, show_colnames = F,
         scale = "row", color = greenred(200),
         annotation_col = annotdf,
         annotation_row = annotdf,
         annotation_colors = ann_col)