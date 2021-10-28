# load heatmap package
library(pheatmap)
# construct toy dataset again
df=data.frame(
    IRX4=c(11,13,2,1),
    OCT4=c(10,13,4,3 ),
    PAX6=c(1 ,3 ,10,9),
    row.names=c("patient1","patient2","patient3","patient4"))

# use Manhattan distance (store in matrix)
d=as.matrix(dist(df, method="manhattan"))

# add patient ID to rows & columns for the heatmap
rownames(d) <- rownames(df)
colnames(d) <- rownames(df)

# Plot the distance matrix using a heatmap
pheatmap(d, cluster_rows = T, cluster_cols = T,
        show_rownames = T, show_colnames = T,
        scale = "row")