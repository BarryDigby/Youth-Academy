# populate a matrix with vectors 

#create vectors
x<- c(1,2,3)
y<- c(41,51,61)
z<- c(77,88,99)

#supply vectors to matrix
matrix(data=c(x,y,z), ncol=3, nrow=3)