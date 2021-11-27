library(ggpubr)
library(gplots)
# load heatmap package
library(pheatmap)
# construct toy dataset again
df=data.frame(
    IRX4=c(11,13,2,1),
    OCT4=c(10,13,4,3 ),
    PAX6=c(1 ,3 ,10,9),
    row.names=c("patient1","patient2","patient3","patient4"))

id <- c("Cluster1", "Cluster1", "Cluster2", "Cluster2")

df <- as.data.frame(t(df))

annotdf = data.frame(row.names = colnames(df),
                     Cluster = id)

pheatmap(df, annotation_col = annotdf, 
         cluster_cols = TRUE, 
         cluster_rows = FALSE, 
         scale = "row")