#to split data in R
#create vector of student names :divide into two groups
studentname=paste('student',1:10000,sep='-')
group1=60%
group=40%

sname =paste ('student',1:100,sep='')
gender = sample(c('M','F'),size=100, prob=c(.6,.4),replace=T)
gender
table(gender)
marks=sample(50:100,size=100,replace = T)
marks
gender;marks;sname
std=data.frame(sname,gender,marks)
(nrow(std))
indexnos= sample(nrow(std),size = nrow(std)*.4)
indexnos
train=std[indexnos,]
test=std[-indexnos,]
train
test
head(df)
marks = ceiling(rnorm(100,60,10))
df= data.frame(sname,gender,marks)


head(df)
x=101:200
length(x)
(index=sample(length(x),size = .6 *length(x)))
length(index)
train1=x [index]
test1=x[-index]
train1
test1
index
sname = paste('student',1:1000,sep='')
gender=sample(x=c('m','f'),size = 1000,prob=c(.6,.4),replace=T)
marks=ceiling(rnorm(1000,60,10))
df=data.frame(sname,gender,marks)
head(df)
df[1:5,];df[c(1,5,7),]
index=sample(nrow(df),size=.7*nrow(df))
index
length(index)
train2=df[index,]
test2=df[-index,]
train2
test2
nrow(train2)
nrow(test2)
#using caret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=0.7,list=F))
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a=table(table$gender));prop.table(t3a)
(t3b=table(table$gender));prop.table(t3b)




