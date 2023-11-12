library(tidyverse)
cars
class(cars)
cars_t<-tibble(cars)
data.frame(x=1:3,y=x+1,z=1) #¿À·ù
tibble(x=1:3,y=x+1,z=1)
str(data.frame(x=1:3,y=letters[1:3]))
tribble(~x,~y,1,"1",2,"2")

str(MASS::Cars93)
cars93_t<-tibble(MASS::Cars93)
str(cars93_t)
mt_cars_t<-as_tibble(mtcars)
head(mtcars)
head(mt_cars_t)
mtcars_d<-rownames_to_column(mtcars,var="rowname")
str(mtcars_d)

str(mtcars)
mtcars_t<-tibble(mtcars_d)
sample(letters,9)

list_s<-list(a=data.frame(Husband[1:3],Wife[1:3]),b=c("1class","2class"),c=list(1,-3),d=5:10)
list_s

list_s$a
list_s[1]
list_s[[1]]
class(list_s)
typeof(list_s)
class(list_s[1])
class(list_s[[1]])
list_s$b
list_s[2]
