#assign
x2 <- 3
x1
x2
(x3=3)
#environment
#variables in env
ls()
#datasets available for use
data()
mtcars
?mtcars
mtcars$mpg
attach(mtcars)
#libraries currently loaded
library()
#elements
ls()
rm(list=ls())
rm(list=ls(all=true))
x1
x2
data(mtcars)
#help
?mean
x = c(0:10,50)
x
print(x)
xm = mean(x)
xm
c(xm, mean(x, trim = 0.10))trims the extreme values
help(mean)
#create values
1:100
seq(0,100, by=2)divided into parts
seq(0,100, by=3)
seq(1,10, length.out = 10)
rep(1,5)
rep(c(1,4),5)
version
Sys.Date() todays date
#working directory
getwd()
#methods available for a class of object
methods(class=matrix)
source('test1.R')
