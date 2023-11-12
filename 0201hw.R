airquality
airquality%>%group_by(Month)%>%summarize(n=n(),meann=mean(Ozone,na.rm=TRUE))
airquality%>%group_by(Month)%>%summarize(n=n(),n_na_Ozone=sum(is.na(Ozone)),n_not_na_Ozone(!is.na(Ozone)))
airquality%>%group_by(Month)%>%summarize(f_Ozone))


library(readr)
ins<-read_csv("C")
ins
ins_d<-read.csv("C")
ins_d
head(ins)
str(ins)
mean(ins$age)
mean(ins$bmi)
grep1('^south',ins$region)
ins%>%filter(ins$sex=="female",ins$expenses>=20000,grep1('^southwest',ins$region))
ins%>%filter(ins$sex=="female",ins$expenses>=20000,grep1('^northeast',ins$region))

ins%>%filter(ins$sex=="female")%>%summarize(south_female=sum(grep1('^southeast',ins$region)))
ins%>%group_by(sex)%>%summarize(n=n())
ins%>%group_by(region)%>%summarize(n=n())
ins%>%group_by(smoker)%>%summarize(n=n())

ins%>%summarize_at(c("age","bmi"),mean)
age_mean<-ins%>%summarize_at("age",mean)
age_mean
