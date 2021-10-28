# load libraries, data
library(pheatmap)
library(gplots)
library(datasets)
data("iris")

# Isolate the categorical variable as a vector
species <- iris[,5]

# isolate rownames as a vector
id <- rownames(iris)

# Transpose the continuous variables in the matrix and store 'as.data.frame'
iris <- as.data.frame(t(iris[,1:4]))

# Add back the ID of each sample (columns not rows after transpose)
colnames(iris) <- id

# As before, we are linking the ID's to flower species
annotdf <- data.frame(row.names = colnames(iris),
                      Species   = species)

# Add colors because default colors are terrible
ann_col <- list(Species = c(setosa = "darkorange2", 
                            versicolor = "forestgreen",
                            virginica = "black"))

# IMPORTANT!!!
# We are using a dendogram generated from euclidean distance
dmat <- dist(as.matrix(t(iris)))

# Make the heatmap
pheatmap(iris,
         clustering_distance_cols = dmat, cluster_rows = FALSE,
         annotation_col = annotdf, annotation_colors = ann_col, 
         scale = "row", color = bluered(100))