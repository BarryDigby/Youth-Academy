# must set up the dataframe again (new code block)
df=data.frame(
    IRX4=c(11,13,2,1),
    OCT4=c(10,13,4,3 ),
    PAX6=c(1 ,3 ,10,9),
    row.names=c("patient1","patient2","patient3","patient4"))

#compute manhattan distance
d <- dist(df, method="manhattan", upper = TRUE)

#print result
print(d)