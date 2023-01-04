ages <- c(22,12,15,23,28,26,30,29,35,45)
plot(ages)

salary <- c(25000,35000,45000,28000,33000,15000,45000,48000,25000,37000)
plot(salary)

plot(ages,salary)
plot(salary,ages)  #x axis ,y axis
help(plot)
###########################################################################

#airquality = read,csv
#click on import data set

airquality <- datasets::airquality
names(airquality)
head(airquality,10)
tail(airquality,10)  #names of all column
##3column
airquality[,c(1,2)]   #all rows and first two column

df <-airquality[,-6]
df

summary(airquality[,1]) #summary statstics for column 1

airquality$Month
summary(airquality$Solar.R) #summary of solar.R
summary(airquality)  #for all the 

plot(airquality$Wind)
plot(airquality$Day)
plot(airquality$Month)
plot(airquality) #graph of all column
plot(a irquality)



#plots and line
plot(airquality$Wind,type = "p") #p for points
plot(airquality$Wind,type = "l") #l for line
plot(airquality$Wind,type = "b")  #point and line both

plot(airquality,col='red')
plot(airquality$Solar.R,airquality$Wind,type = "p
     ",col="black")

#horizonatl bar plot

barplot(airquality$Ozone,
        main = "ozone concentraction in air",
        ylab ="ozone levels",
        col = "blue",
        horiz = T,
        axes = F)


barplot(airquality$Ozone,
        main = "ozone concentraction in air",
        ylab ="ozone levels",
        col = "blue",
        horiz = F,
        axes = F)
help("barplot")
#HISTOGRAM
hist(airquality$Temp,col = "black",border = "white")



hist(airquality$Temp,
     main = "solar relation value in air",
     ylab ="ozone levels",
     col = "black",
     border = "white")


hist(airquality$Temp,
     main = "solar relation value in air",
     ylab ="ozone levels",
     col = "black",
     border = "white")
help("hist")


#single box plot


boxplot(airquality$Wind,
        main = "box plot",
        col = "green",
        border = "red",
        horizontal = T)




boxplot(airquality[,1:4],
        main = "box plot",
        col = "black",
        border = "red",
        horizontal = T)

mean(airquality$Solar.R)  #na
mean(airquality$Solar.R,na.rm = T)  #value

median(airquality$Solar.R)  #na
median(airquality$Solar.R,na.rm = T)



skewness(airquality$Ozone,na.rm = T)
sd(airquality$Ozone,na.rm = T)


