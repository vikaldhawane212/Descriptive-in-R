airquality<-datasets::airquality
#top 10 rows and bottom 10 rows
head(airquality,10)
tail(airquality,10)
airquality[50:60,c(1,2)]

#descriptive statistics
#1
summary(airquality[,c(4,5)]) #GENERATE FOE COLUMN 2,3

airquality$Ozone
airquality$Temp
airquality$Wind

#visualization
#scatter plot
plot(airquality$Wind,type="l")

plot(airquality$Temp,airquality$Ozone,type="p")

#plot and lines
plot(airquality$Wind,type="l") 

plot(airquality$Wind,type="b") 
plot(airquality$Wind, xlab = "ozone concentration",
     ylab = "No of instances", main = "ozone levels in NY city",
     col = "blue",type = "l")

#horizontal bar plot
barplot(airquality$Ozone,main = "ozone concentration in air",
        ylab = "ozone levels", col = "blue", horiz = T, axes=T)

#histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = "soloar radiation values in air",
     xlab = "solar rad.",col = "blue")


#single box plot
boxplot(airquality$Wind,main = "Boxplot")
boxplot.stats(airquality$Wind)
boxplot.stats(airquality$Ozone)

#multiple box plots

boxplot(airquality)


par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="0")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
barplot(airquality$Ozone, main = "ozone concentration in air",
        xlab = "ozone levels", col = "green", horiz= TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main = "multiple box plot")
