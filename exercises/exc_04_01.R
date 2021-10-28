df=data.frame(
    IRX4=c(11,13,2,1),
    OCT4=c(10,13,4,3 ),
    PAX6=c(1 ,3 ,10,9),
    row.names=c("patient1","patient2","patient3","patient4"))

df2=tidyr::gather(cbind(patient=rownames(df),df),key="gene",value="expression",IRX4,PAX6,OCT4)

library(ggpubr)
ggbarplot(df2, x="gene", y="expression", fill="patient", facet.by = "patient")