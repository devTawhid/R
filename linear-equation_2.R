## to inspect equation 
library(matlib)

3x + 2y = 5
2x + 3y = 6



A <- matrix(c(1,2,-1,2),2)
b <- c(2,1)
showEqn(A,b)



echelon(A)
echelon(matrix((1:9),3,3), verbose = T)

plotEqn(A,b)

solve(A,b) ##normal solve
Solve(A,b) ##matlib's solve

all.equal(R(A), R(cbind(A,b)) ) ##to check 
R(A) == R(cbind(A,b))           ##consistincy

echelon(A,b)
echelon(A,b, verbose = T)       ##verboses the result

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

inv(A,verbose=T)
Inverse(A,verbose =T,fractions=T)
help(inv)


##concatination of strings 
paste("age", "name", "birth", sep="")
paste0("age","name","tawhid") ##diff is paste0 don't support sep option






















