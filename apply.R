plot(sin(x),x <- seq(-180,180))

help(plot)

plot(sin, -pi, 2*pi,col="tomato",type="p")

##apply function

help(apply)

x <- matrix(c(1:4),nrow=2)

dimnames(x)[1] <- letters['shamim']
list1 <- list(c(2,5,3),21.3,sin)

air <- airquality
head(air)

Ozone <- air$O
Solar <- air$S

Ozone_Solar <- cbind(Ozone, Solar)
Ozone_Solar

##apply

sum(Ozone, na.rm=T)



matrix_nrom <- matrix(rnorm(50),nrow=10)

sum(matrix_nrom[1,])

## 1st arg data, 2nd arg the dimestion need to be collapse, 3rd arg the function need
## applied
apply(matrix_nrom, 2, mean)

##apply(matrix_nrom, quantile, probs=c(.25,.75))


names(list_0)



list_0 <- list(a <- 1:4, rnorm(20), matA)

list_0[[1]]

lapply(list_0, mean)

##sapply = simplified(output) lapply

sapply(list_0, mean)

