install.packages("dplyr") #by command install package or through package tab
library(dplyr)

# nycflights13 package is only for the dataset that we are going to use 
install.packages("nycflights13")
library(nycflights13)

#find dimension of fligh, see flight as table in different tab 
#See  first and last row,check no of rows and columns, check structure 
#display names of columns


dim(flights)
View(flights)
head(flights,20) #First 20 records
tail(flights)  # By default last 6 records
nrow(flights)
ncol(flights)  #columns
str(flights)
names(flights)  # OR colnames(flights)

## Filter out records based on some criteria-display  record list 

filter(flights, month==1, day==1) #it showing data for 1st month and 1st day

new<-filter(flights, month==1, day==1) #Save new database with this entry only842

filter(flights,month==12, day==14)


## Pipe/chaining operator %>% (output of 1 as input to other function)

flights %>% filter(month==10, day==8)


#eg. log(sin(exp(cos(x))))
# X %>% cos() %>% exp() %>% sin() %>% log()

#gun(fun(x,y),z)
# x %>% fun(y) %>% gun(z)



## arrange first by year then month then day in ascending order 

arrange(flights, year, month, day)

##-----
new2<-arrange(flights,desc(arr_delay))  #data (arr,delay) sort by descending order 

## select columns by name
select(flights, year, month,day)
## select all column between year and day(inclusive)
View(flight)
new3<-select(flights, year:day) #Include year to day column 


new4<-select(flights, -(year:day)) #remove year to day column 

##create/add new columns
new5<-mutate(flights,
             gain=arr_delay - dep_delay,
             speed=distance/air_time *60
             )
View(new5)

## Only output ----not store 
mutate(flights,
       gain=arr_delay - dep_delay,
       speed=distance/air_time *60
)

##--------
sample_n(flights,10) #Select any 10 random samples
sample_frac(flights, 0.01) #1% record to be selected at random 

###------------
flights$dest    #It's showing all value/name
unique(flights$dest)  #It's showing only unique value/name
length(unique(flights$dest))  #It's showing length unique value/name


##Another example

New6<- data.frame(name=c("Pratik","Nisha","sanket","Rahul", "sayali","Arzoo","Manish","Parth","meenal","Vaishnavi"),
                      dept=c("trainer","HR", "trainer", "Admin", "trainer", "Admin","HR", "Sales","MKT","HR"),
                      salary=c(95000,45000,34000,56000,23000,54000,80000,55000,20000,40000))
New6

depgrp<-group_by(New6,dept)

summarise(depgrp,
          sal= n_distinct(salary),
          depgrp=n())


##########

data.frame(name=c("Pratik","Nisha","sanket","Rahul", "sayali","Arzoo","Manish","Parth","meenal","Vaishnavi"),
                  dept=c("trainer","HR", "trainer", "Admin", "trainer", "Admin","HR", "Sales","MKT","HR"),
                  salary=c(95000,95000,95000,95000,95000,95000,80000,55000,55000,40000))
New6

depgrp<-group_by(New7,dept)

summarise(depgrp,
          sal= n_distinct(salary),
          depgrp=n())

## SAME SALARY
New8<-data.frame(name=c("Pratik","Nisha","sanket","Rahul", "sayali","Arzoo","Manish","Parth","meenal","Vaishnavi"),
             dept=c("trainer","HR", "trainer", "Admin", "trainer", "Admin","HR", "Sales","MKT","HR"),
             salary=c(95000,95000,95000,95000,95000,95000,80000,55000,55000,40000))
New6

depgrp<-group_by(New8,dept)

summarise(depgrp,
          sal= n_distinct(salary),
          depgrp=n())

## Year represents the integer1

select(flights,year) #Year
select(flights,4) # Dep_Time

################
filter(
  summeries(
    select(
      group_by(flights,year,month,day),
      arr_delay,dep_delay),
    
    arr=mean(arr_delay,na.rm =TRUE),
    dep=mean(dep_deplay,na.rm = TRUE),
    arr>30 | dep>30
)
    )
  )
)









