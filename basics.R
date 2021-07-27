##creating a vector
height<-c(1.75,1.80,1.65,1.90,1.74,1.91)  #  height in meters
height

weight<-c(60,72,57,90,95,72)  
bmi<-weight/height^2

bmi

sum(bmi)
min(bmi)
max(bmi)


##creating a matrix
seq(1,6,.5)
data <- 1:4
matA <- matrix(data,nrow=2,byrow=T)
matA

matB <- matrix(seq(4,1,-1),nrow=2)
matB


matA * matB

##matrix multiplication
matA %*% matB

##finding the determinant
det(matA)

##finding the inverse matrix
matC <- matA			##1x+2y=5
b <- c(5,6)			##3x+4y=6

xy <- solve(matC, b)
xy

matI <- rbind(c(1,0),c(0,1))
matI
solve(matI)


dim(matI)


##creating a function in R
egg <- function(x){
	dim(x)
}

egg(matI)

##creating a diagonal matrix

matD <- diag(c(1,1)) 
matD





























