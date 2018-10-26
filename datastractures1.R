#data stracturs in slides
#vectors------
x=1:10 #create seq of nos from 1 to 10
x
x1 = 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5)) TYPE L for integer
x2
class(x2)

(x3=letters[1:10])
class(x3)
letters[1:26]
(x3b = c('a',"Dhiraj","4"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
letters[seq(1,26,2)]
#access elements
(x6= seq(0,100,3))
ls()
length(x6)
x6[20]
x6[3]
x6[seq(1,length(x6),2)]
x6[c(2,4)]
x6(-1)
x6
x6[-1]
x6[-c(1,5,20)]
#sort and order
set.seed(123)
(x6 = sample(1:20))
set.seed(123)
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing = T)
rev(x6)
set.seed(123)# same pattern for everytime
(x=1:10)
x<5
x[x<4|x>6]=100;x
length(x[x==100])
#matrix
100:111
(m1=matrix(100:111,nrow=4))
(m1=martix(100:111,ncol=3,byrow=T))
length(x)
class(x)
attributes(m1)
x=101:124
m3=matrix(x,ncol = 6)
m3
dim(m3)
#access to marix
colSums(m1)
t(m1) transpose row to column and vice versa
m1
sweep(m1, MARGIN = 1,STATS = c(2,3,4,5),FUN = "+") rowise
sweep(m1,MARGIN = 2,STATS = c(2,3,4),FUN = "*")
#addmargins
m1

addmargins(m1,margin = 1,sum)cowise function
rbind(m1,colSums(m1))
round(addmargins(m1,1,sd),2)
#data frame
create vectorsto be combined into df
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('m','f'),size = 30,replace=T,prob = c(.7,.3)))
(marks=floor(rnorm(30,mean = 50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA','BTECH'),size=30,replace=T,prob = c(.5,.4,.5)))
rollno; sname;gender;marks;marks2;course
#create data frame
df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = T)
str(df1) #structure of df
summary(df1)#summary
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
summary(df1)
df1
df1[1:10,]
df1[marks>50 & gender=='f',c('rollno','sname','gender','marks')]
(x=rnorm(100,mean = 60,sd=10))
summary(x)
quantile(x)
quantile(x,seq(0,1,.1))
fivenum(x)
boxplot(x)
abline(h=fivenum(x))
hist(x)
plot(density(x))
head(df1) #rows 6
floor(3.4)
floor(3.7)
ceiling(3.4)
trunc(3.4)
signif(13.447583,4)
head(df1,n=3)
class(df1)
aggregate(df1$marks,by=list(df1$gender),FUN= max)
