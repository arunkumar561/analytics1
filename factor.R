#factors
(gender=sample(c('m','f'),size=20,replace=T))
summary(gender)
genderf=factor(gender)
summary(genderf)

(likscale= sample(c('ex','good','sat','poor'),size = 20,replace = T))
summary(likscale)
class(likscale)
likscalef=factor(likscale)
summary(likscalef)
class(likscalef)
likscaleOF=factor(likscale,ordered=T,levels=c('poor','sat','good','ex'))
summary(likscaleOF)
likscaleOF
barplot(table(likscalef),col=1:4)
barplot(table(likscaleOF),col=1:4)
