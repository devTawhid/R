##
airquality

Air <- airquality[1:10,]
Air <- Air[complete.cases(Air),]

gd <- (Air$O < 20)

Air[gd,]

which(Air$O<0)



#some random functions

trunk()
round(7.4)
floor(7.8)
ceiling(7.1)

choose(5,2) ##conbination 5c2
factorial(5)




######subsetting data using diff methods######

air10 <- airquality[c(1:10),]
dimnames(air10[,]) <- c("ozone","solar","wind","temp","month","day")

air10[c(F,T,T,T,T,T,T),]  ##basic subsitting. Here F values will not be 
                          ##in the resulting dataset

air5 <- air10[1:5,]

row.names(air5) <- c("one","two","three","four","five") ##naming the rows

air5 

air10

air10[complete.cases(air10),]  ##showing only non missing cases

(air10$Ozone > 10)
air10$Ozone != 'NA')

air10[air10$Ozone > 10 ,]


















