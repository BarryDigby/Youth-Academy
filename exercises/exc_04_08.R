# load libraries, dataset
library(pheatmap)
library(gplots)
library(datasets)
data("iris")

# Calculate distance metrics. 
dmat <- dist(iris[,1:4])

# This dataframe links each sample name to its flower species
annotdf <- data.frame(row.names = rownames(as.matrix(dmat)),
                      Species   = iris[,5] )

# Must make colors so we can see which group a sample belongs to
ann_col <- list(Species = c(setosa = "darkorange2", 
                            versicolor = "forestgreen",
                            virginica = "black"))

# plot heatmap
pheatmap(as.matrix(dmat), 
         clustering_distance_rows = dmat, 
         clustering_distance_cols = dmat, 
         scale = "column", color = bluered(200),
         annotation_col = annotdf,
         annotation_row = annotdf,
         annotation_colors = ann_col)