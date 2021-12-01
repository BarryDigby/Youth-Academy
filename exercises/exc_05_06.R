library(pheatmap)
library(gplots)

# load dataset
mat <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/mat.txt", row.names="samples", header=T, sep=",", stringsAsFactors = TRUE)

# Isolate the categorical variable as a vector
group <- mat[,21]

# isolate rownames as a vector
id <- rownames(mat)

# Transpose the continuous variables in the matrix and store 'as.data.frame'
mat_t <- as.data.frame(t(mat[,1:20]))

# Add back the ID of each sample (columns not rows after transpose)
colnames(mat_t) <- id

# As before, we are linking the ID's to flower species
annotdf <- data.frame(row.names = colnames(mat_t),
                      Group   = group)

# Add colors because default colors are terrible
ann_col <- list(Group = c(Clone1 = "purple", 
                            Clone9 = "dodgerblue",
                            Control = "darkorange3"))

# Make the heatmap
pheatmap(mat_t,
         cluster_rows = T, cluster_cols = T,
         annotation_col = annotdf, annotation_colors = ann_col, 
         scale = "row", color = greenred(50),
         cutree_cols = 3, treeheight_row = 100, treeheight_col = 100)