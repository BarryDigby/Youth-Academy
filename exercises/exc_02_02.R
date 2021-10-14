# populate a matrix with vectors 

#create vectors
x<- c(1,2,3)
y<- c(4,5,6)
z<- c(7,8,9)

#supply vectors to matrix
matrix(data=c(x,y,z), ncol=3, nrow=3)