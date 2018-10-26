#analysis of dataset mtcars using dplyr
library(dplyr)
?mtcars
#stracture of data set
str(mtcars)
dim(mtcars)
names(mtcars)
rownames(mtcars)
summary(mtcars)
#summary activites on mtcars
t1= table(mtcars$am)
pie(t1)
19/32*360
pie(t1, labels=c('auto','manual'))
(t2= table(mtcars$gear))
pie(t2, labels=c('3','4','5'))
barplot(t2)
barplot.default(t2, col = 1:3)
barplot.default(t2, col = 1:3, horiz=T)
barplot.default(t2, col = c('green','blue','yellow'),xlab='gear',ylab='no of cars',ylim = c(0,20))
title(main='distribution of gears of cars',sub='no of gears')
#using dplyr %>% is chaining fuction
mtcars %>% select(mpg, gear)%>% slice(c(1:5,10))
#select for colums , slice for for rows
mtcars %>% arrange(mpg)#ascending order of milege
mtcars %>% arrange(am,desc(mpg)) %>% select(am,mpg)#ascending order of am,descending order of mpg
mtcars %>% mutate(rn= rownames(mtcars)) %>% select (rn,mpg)
#display rownames with mpg 
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select (sample(x=c(1:11),size = 2))%>% head
sample (x=1:11, size =2)
mtcars %>% mutate(newmpg=mpg*1.1) %>% select(mpg,newmpg)
mutate(mtcars, newmpg=mpg*1.2)
#type of Tx,mean (mpg)
mtcars %>% group_by(am) %>% summarise(meanmpg=mean(mpg))
mtcars %>% group_by(am) %>% summarise(Meanmpg= mean(mpg),maxHP =max(hp),minwt=min(wt))
mtcars %>% group_by(gear, cyl) %>% summarise(meanmpg=mean(mpg))                                     
                                       