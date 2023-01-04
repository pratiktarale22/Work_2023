"Hello World"
'Hello World'


# Output Numbe 
20
6.4
2 5 10 # Will raise error 

#This

# Variable

names <-"Pratik"
name <-"Amit"
name
age <-26 
age
num<- "20"
age+5
num+5


text<-"good"
paste("Excelt is",text) #cobine text using paste
paste("Excelt is",name)

# Assign same value to multiple variables in one line 
var1 <- Var2 <- Var3<- "Orange"

myvar<- "Pratik"
my_var<- "nisha"
MYVAR<- "Manish"
myvar2<- "lankesh"
this.year <-2023
.myvar<- "P" # it's run,but not showing in output so plz ignore

TRUE <- "P" #this is assigned value; true or false

#data type in R 
#Numeric/Flot -decimal whole +ve -ve

X<- 10.5
class(X)

# Interger -whole +ve -ve 
y<- 1000L
class(y)

#character/string 
x<-"R is exciting"
class(x)

#logical/boolean
x<- TRUE
class(x)

3>5
5>2
6==6
6==8
1 !=5
1!=1

# Arthmetic Operations 
x<- 2
y<- 7

x+y
x-y
x*y
x/y #Flot/decimal result 
x^2
x%%y #module
x%%y #integer division

2 * pi *6378
??Constants

#assignment operator 
x<- 30
30 ->x
class(x)

#bulit in math funcation 

max(25,76,20)
min(2,6,10)
sqrt(36)
abs(-4.5)

# Data Structures: Vectors, Data Frame
# Homogeneous Vectors
#Vector of string 

Fruits<- c("Apple","Bananna","Orange")
class(Fruits)

#Vector of numerical
n1<- c(1,2,3,4)
n2<- c(T,F,TRUE,FALSE)
class(n1)
class(n2)

#Heterogeneous Vectors
mix<- c(81,2.4,TRUE,"Mango",6L,F)
class(mix)

x<- c(2,0,0,6)
y<- c(1,8,9,9)

x+y
x*6
(x+y)*1.6

#Sequence
1:1000
4:8

seq(1,40,6) #Start value, end value, step/increment value (6 chi gap)
seq (1,50,by=3)

n1<- 1.5:6.3 #default increment value is 1
n1

n1<- 1.5:6.5
n1



#Repetition
rep (45,7)
rep("Mango",6)

#Random Sample

sample (1:50,8)
sample(1:10,200)# error default value for replace=FALSE
sample(1:10,200,replace=TRUE)
sample(c("HP","APPLE","IV"),500,replace=T) #use small c (P)

#################################

#Indexing/Accessing vector elements
x<-c(2,0,0,4)
x[1]
x[c(1)]
x[-1] #exclude 1st element
x[-2]
x

x[1] <-3
x

x[-1]=5
x

x[c(1,3)]

y<-c(1,9,9,9)
y<9

y[y<9]<-5
y[y<9]<-7
y[y>7]<-10

#Relational Operators with vectors
marks<-c(20,60,70,80,90,100,40,30)

marks>50
marks[marks>50]
marks==80

names<-c("snehal","pooja","vidya","Ganesh")

"pooja" %in% names
"pooja" %in% names
"meenal" %in% names
"mona" %in% names

#slicing

marks

marks[3:7]
marks[4]

marks[3]<-97

marks

marks[-3]<-100

price<-c(2999,449,45,680,870,87,456,4765,4745)
price[2:7]

#select elements from a vector with conditions

price[price>1000]

sort(price)
sort(price,decreasing = T)
help("sort")

#Basic Function on Vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)

#Data Frames
#Slicing Data Frames

a<-c(42,18,92,87,66,88)
b<-c("p","r","a","t","i","k")
data.frame(a,b)
df<-data.frame(a,b)

df1<-data.frame(
  Training=c("strength","stimina","other"),
  Pulse=c(100,150,120),
  Duration=c(60,30,40)
)
df1

df1[,1] #all rows, 1st colum
df1[2,]
df[,]

df1$Training

df2<- data.frame(Height=c(150,180),Weight=c(66,74))

food<-data.frame(name=c("Pav Bhaji","paneer Masala", "Kaju Masala",
                        "Butter Chikan","Gulabjamun", "Mutton Biryani"),
                 type=c("veg","veg","veg","Nonveg","veg","Nonveg"),
                 taste=c("spicy","spicy","sweet","spicy","sweet","spicy"),
                 price=c(120,134,167,340,346,400))

food

#Row with food type :Veg

food[food$type=="veg",]

#Food names and Price of all nonveg items

food[food$type=='Nonveg',c(1,4)]

#or

food[food$type=='Nonveg',c("name","price")]

#All spicy food with price less than 300

food[food$taste=='spicy'& food$price<300,]

#orange,mtcars are built in data set. Learn with this data set

Orange
mtcars

dim(mtcars) #no of rows and no of colums
nrow(mtcars) #no of rows
ncol(mtcars) #no of colums
str(mtcars) #structure -col names data type and value
summary(mtcars)
help(mtcars) #info of dataset
mtcars$cyl #individual col cyl value
table(mtcars$cyl) #there are 11 cars having 4 cylinder, 7 cars-6 cyl,14 cars-8 cyl
table(mtcars$gear)


#USArrests -another dataset

USArrests
help("USArrests")
View(USArrests) #dataset opens in new  windown in table structure

head(USArrests) #by default show  first  6 records 
tail (USArrests)  #by default show  last  6 records 
head(USArrests,8) #by show no of data set by nuber (8 takla tasa)