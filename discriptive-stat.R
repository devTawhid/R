install.packages("liks")
library(liks)

feq_vect <- c(1,2,1,2,1,2,1,3,12,1,11,1,1)

table(feq_vect)

matD <- diag(c(1,5,3,4,5,6,7))
matD


shamim <- c(2,3,4,5,5,6,3)

shamim_c <- c(2,30,40,45,5,6,3)


mat_shamim <- cbind(shamim, shamim_c)


matB <- as.data.frame(mat_shamim)
matB$shamim

table(matB$shamim)

## using count function 
install.packages("plyr")
library(plyr)

count(matB, "shamim")
count(mat_shamim, "shamim")

table(matB$shamim, matB$shamim_c)




## reading a spss file
library(foreign)
read <- read.spss('?gssnet.sav', to.data.frame=TRUE)

getwd()
ls()

## mean, median, mode, quantile
air <- airquality
air
head(air)
mean(air$O)
mean(air$O, na.rm=T, trim=0.3)

## to set names for list we need to use "=" not "<-" it works (only) on
## list,data.frame 
air_list <- list(Ozone = air$O, Solar = air$S, Wind = air$W)
names(air_list)

mode(air$O)
quantile(air$O, prob=c(.25,.5,.75),na.rm=T)
median(air$O, na.rm=T)
summary(air$O)
## standard deviation
sd(air$O, na.rm=T)


## calculation of shape
install.packages('moments')
library(moments)
skewness(air$O, na.rm=T)
kurtosis(air$O, na.rm=T)



## a practice

min(air$O, na.rm=T)
max(air$O, na.rm=T)
range(air$O, na.rm=T)
ra<- max(air$O, na.rm=T)- min(air$O, na.rm=T)
sd(air$O, na.rm=T)
age<-na.omit(air$O)

st.err<-function(x){

		sd(x)/sqrt(length(x))

}

st.err(air$O)



## subsetting according to preference and removing na values
head(air$O)

bad <- is.na(air$O)
good <- air$O[!bad]
air$O[!!bad]

good[x>8]

air$O[complete.cases(air[1:6]),][1:6,]

## removing two columns 
complete.cases(var1, var2)



mat_unit <- diag(3) ## to create unit matrix

mat_unit

mat_diag <- diag(c(1,2,3)) ## to create diagonal martix

mat_diag














