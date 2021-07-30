##
mtcars
data()            ##shows available dataset in the current package


data <- mtcars
cor(data$mpg, data$disp)  

attach(data)   -   ##to avoid writing $ sign to fatch varible
cor(mpg, disp)    ##now we dont need the $ signs anymore

detach(data)      ##to detach a the attached dataset

cor(mpg, disp)    ##now it will not work

cor(data)         ##it shows all the correlations between all the variables

round(cor(data), 2) ##to see only two digits after faction

cor(data, use = "complete.obs")  ##to get little more precise data

plot(mpg, disp)    ##between two varibles

plot(data)         ##to create scatter plot for all the varibles

##Regrassion

Regout <- lm(y~x,data = my_data) 

install.packages("datarium")

library(datarium)

data("marketing", package = "datarium") ##to load data

marketing[1:6,]

install.packages("ggplot2")

library(ggplot2)

head(marketing)

attach(marketing)

plot(youtube, sales)

cor(youtube, sales)

##ploting

ggplot(marketing, aes(x = youtube, y = sales)) + 
	geom_point() + stat_smooth()

ggplot(marketing, aes(x = youtube, y = sales)) + 
	geom_point() + stat_smooth(method = lm)

ggplot(marketing, aes(x = youtube, y = sales)) + 
	geom_point() + stat_smooth() +stat_smooth(method = lm)


model <- lm(sales ~ youtube, data = marketing)

model

summary(model)

##practice of nurul islam's book

data <- matrix(c(1,3,4,4,6,8,10,10,11,13,80,97,92,102,103,111,119,123,117,136),10,2)

data

colnames(data) <- c('x', 'y')

data <- data.frame(data)

data

attach(data)

RegOut <- lm(y ~ x, data = data)

RegOut             ##y = 80 + 4x

fitted <- predict(RegOut)

fitted

sum(fitted)

sum(data$y)

resi <- resid(RegOut)

sum(resi)

sum(data$x*resi)

sum(resi*fitted)

predict(RegOut, newdata = data, interval = 'confidence')

ggplot(data, aes(x = x, y = y)) + 
	geom_point() + stat_smooth()

ggplot(data, aes(x = x, y = y)) + 
	geom_point() + stat_smooth() + stat_smooth(method = lm)

ggplot(data, aes(x = x, y = y)) + 
	geom_point() + stat_smooth(method = lm)



h w
y x
plot(h,w)

cor()

regout <- lm(h ~ w,)

predict(regout)

resid(regout)





