library(tidyverse)
mtcars_f<-filter(mtcars,mpg>30)
mtcars_f
mt_t<-as_tibble(mtcars)
mt_t<-filter(mt_t,mpg>30)
mt_t

mt_cars30_wt_t<-filter(mt_t,mpg>30&wt<1.8)
mt_cars30_wt_t
mt_cars30_wt<-filter(mtcars,mpg>30&mpg<1.8)
mt_cars30_wt

mt_cars30_am<-filter(mtcars,mpg<30,cyl %in% c(6,8),am==1)
mt_cars30_am
mt_cars30_amt<-filter(mt_t,mpg<3&cyl %in% c(6,8),am==1)
mt_cars30_amt

mt_cars30_qn<-filter(mtcars,mpg>=median(mpg)&mpg<=quantile(mpg,probs=0.75))
head(mt_cars30_qn)
mt_cars30_be<-filter(mtcars,between(mpg,median(mpg),quantile(mpg,probs=0.75)))
head(mt_cars30_be)

airs<-as_tibble(airquality)
filter(airquality,is.na(Ozone)|is.na(Solar.R))
filter(airs,!is.na(Ozone),!is.na(Solar.R))

set.seed(3236)
sample_n(mtcars,size=3)
sample_n(mt_t,size=3)
sample_frac(mtcars,size=0.7)
sample_frac(mt_t,size=0.7)

ss<-sample(1:nrow(mtcars),size=nrow(mtcars)*0.7)
ss
train<-mtcars[ss,]
test<-mtcars[-ss,]
mtcars[sample(1:nrow(mtcars),size=3),]
mtcars[sample(1:nrow(mtcars),size=nrow(mtcars)*0.7),]

top_n(mtcars,n=2,wt=mpg)
top_n(mtcars,n=-2,wt=mpg)

arrange(mt_t,mpg)
arrange(mt_t,mpg,desc(disp))
arrange(mt_t,mpg,disp)
arrange(mt_t,mpg,desc(wt))

air_t<-as_tibble(airquality)
arrange(air_t,Ozone)
arrange(air_t,desc(Ozone))
arrange(air_t,Ozone,Solar.R)
arrange(air_t,Ozone,desc(Solar.R))
arrange(airquality,Ozone,Solar.R)
arrange(air_t,Ozone,Solar.R)

air_f<-filter(air_t,Month==5,Day<=10)
arrange(filter(air_t,Month==5,Day<=10),Ozone)
arrange(airquality,Month==5,Day<=10)
arrange(air_t,!is.na(Ozone))
arrange(airquality,!(is.na(Ozone)))
arrange(airquality,is.na(Ozone))
arrange(airquality,is.na(Ozone),desc(Ozone))

arrange(filter(airquality,Month==5,Day<=10),!is.na(Ozone),desc(Ozone))
arrange(airquality,!is.na(Ozone),-desc(Ozone))
arrange(airquality,!is.na(Ozone),(Ozone))

