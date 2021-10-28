#load library, data
library(pheatmap)
library(gplots)
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Isolate the categorical variable 
cancer <- _______

# isolate the rownames 
id <- _________

# transpose the dataframe 
expr <- as.data.frame(t(expr[,2:6]))

# add back the patient ID to the transposed DF
colnames(expr) <- id

# This dataframe links each patient ID to the cancer type vector
annotdf <- data.frame(row.names = colnames(expr),
                      Cancer    = cancer )

# Must make colors so we can see which group a sample belongs to
ann_col <- list(Cancer = c(BRCA = "darkorange2", 
                           LUSC = "forestgreen",
                           OV = "black"))

# Calculate distance metrics. 
dmat <- dist(as.matrix(t(____)), method = "________")

# make heatmap
pheatmap(expr,
         clustering_distance_cols = dmat, cluster_rows = FALSE,
         annotation_col = annotdf, annotation_colors = ann_col, 
         scale = "row", color = _______(200),
         show_colnames = FALSE)