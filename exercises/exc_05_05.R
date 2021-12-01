library(pheatmap)
library(gplots)

# load dataset
mat <- read.table("/data/mat.txt", row.names="samples", header=T, sep=",", stringsAsFactors = TRUE)

# Calculate distance metrics. 
dmat <- dist(mat[,1:20], method = "manhattan", diag = T)

# This dataframe links each sample name to its flower species
annotdf <- data.frame(row.names = rownames(as.matrix(dmat)),
                      Group   = mat$group )

# Must make colors so we can see which group a sample belongs to
ann_col <- list(Group = c(Clone1 = "purple", 
                            Clone9 = "dodgerblue",
                            Control = "darkorange3"))

# plot heatmap
pheatmap(as.matrix(dmat), 
         clustering_distance_rows = dmat, 
         clustering_distance_cols = dmat, 
         color = greenred(200),
         annotation_col = annotdf,
         annotation_row = annotdf,
         annotation_colors = ann_col,
         show_rownames = T, show_colnames = T,
         treeheight_row = 100, treeheight_col = 100, cutree_cols = 3, cutree_rows = 3)