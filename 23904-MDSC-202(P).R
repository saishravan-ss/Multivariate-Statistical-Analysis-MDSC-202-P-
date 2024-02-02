A <- matrix(data=c(-3,2,893,0.17),nrow=2,ncol=2)      # Initializing the matrix with variable A
A                                                     # printing A
matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE) # Defining matrix with 2 rows and 2 cols which reads by coloumn based way
matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)  # Defining matrix with 2 rows and 2 cols which reads in a row based way
rbind(1:3,4:6)                                        # reads the 1 to 3 in row way and 4 to 6 in another row
cbind(c(1,4),c(2,5),c(3,6))                           # reads the given elements in a column way 
mymat<-rbind(c(1,3,4),5:3,c(100,20,90),11:13)         # initializing the mymat with matrix of size 4x3
mymat                                                 # printing the mymat matrix
dim(mymat)                                            # printing the dimensions of the matrix
nrow(mymat)                                           # printing no.of rows
ncol(mymat)                                           # printing no.of columns
dim(mymat)[2]                                         # printing the no.of columns with index
A<-matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)  # initializing the matrix A with 3 rows and 3
A                                                     # printing the matrix A
A[3,2]                                                # printing the 3rd row 2nd column element
diag(x=A)                                             # printing the diagonal elements of A
A[,2]                                                 # printing 2nd column
A[2:3]                                                # printing the 2nd and 3rd row elements of 2st column
A[,c(3,1)]                                            # printing the 3rd and 1st column
A[c(3,1),2:3]
A[,-2]                                                # removes the 2nd column
A[-1,3:2]
A[-1,-2]                                              # removes 1st row and 2nd column
A[-1,-c(2,3)]
B<-A                                                  # assigning the matrix A to B
B[2,]<-1:3
B[c(1,3),2]<-900
B[,3]<-B[3,]
B[c(1,3),2:1]<-c(65,-65,88,-88)
B[c(1,3),c(1,3)]<-c(-7,7)
diag(x=B)<-rep(x=0,times=3)
