## to inspect equation 
library(matlib)

A <- matrix(c(1,2,-1,2),2)
b <- c(2,1)
showEqn(A,b)


R(A) == R(cbind(A,b))

air$O[!!bad]
plotEqn(A,b)

solve(A,b) ##normal solve
Solve(A,b) ##matlib's solve

all.equal(R(A), R(cbind(A,b)) ) ##to check 
					  ##consistincy

echelon(A,b)

## solving a non-square matrix

mat_non_sq <- matrix(c(1,2,3,-1,2,1), nrow=3)
mat_non_sq

b <- c(2,1,6)

echelon(mat_non_sq, b)
echelon(mat_non_sq, b, verbose=T) ##to see the steps


solve(mat_non_sq, b)
Solve(mat_non_sq, b,fractions =T, verbose =T) ##to see the details

plot(mat_non_sq,b)
plotEqn(mat_non_sq, b)

##
x <- MASS::ginv(mat_non_sq)
x

par(mar=c(4,4,0,0)+.1)
points(x[1], x[2], pch=15)

inv(A, verbose = T)


##concatination of strings 
paste("age", "name", sep="=")
paste0("age","name","tawhid") ##diff is paste0 don't support sep option






















