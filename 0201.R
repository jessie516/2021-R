library(tidyverse)
iris
names(iris)
head(iris)

iris_t<-tibble(iris)
iris_t
select(iris_t,1:2)
select(iris_t,2:4)
select(iris_t,"Sepal.Width","Species")
select(iris_t,c("Sepal.Width","Species"))

dplyr::select(iris,"Sepal.Length","Petal,Length")

select(iris_t,contains("pe",ignore.case=FALSE))
select(iris_t,contains("Pe",ignore.case=FALSE))
select(iris_t,contains("th",ignore.case=FALSE))
select(iris_t,ends_with("width",ignore.case=FALSE))
select(iris_t,ends_with("width"))
select(iris_t,starts_with("s",ignore.case=FALSE))
select(iris_t,matches("s"))
select(iris_t,matches("s",ignore.case=FALSE))

dplyr::select(iris,contains("pe"))

select(iris_t,model=Species)
select(iris_t,model=Species,everything())
select(iris_t,!c(2,4))
select(iris_t,-c(2,4))

#?
rename(iris,model=Species)
iris_s<-rename(iris_t,model=Species)
#?
select(iris_s,where(is.numeric))
select_if(iris_t,is.numeric)       

mtcars_t<-tibble(mtcars)
mutate(mtcars_t,kml=mpg*0.43)
mtcars_k<-mutate(mtcars_t,kml=mpg*0.43)
names(mtcars_k)

mtcars<-mutate(mtcars,kml=mpg*0.43)
mtcars
mtcars_s<-mutate(mtcars,gp_kml=if_else(kml>10,"Good","False"))
head(mtcars_s)
mtcars_t<-mutate(as_tibble(mtcars),gp_kml=if_else(kml>10,"Good","False"))
mtcars_t
names(mtcars_t)

#?
dplyr::select(mtcars_t,gp_kml,everything())
if_else(kml>10,"Good","False")

summarise(iris_t,m_Sepal=mean(Sepal.Width))
summarise(iris,n=n(),n_species=n_distinct(Species))

by_s<-group_by(iris,Species)
by_s

summarise(by_s,n=n(),m_Sepal=mean(Sepal.Width))

