#패키지 readxl 함수 연습문제
#1
x<-read_csv("csv_data.csv",col_types="iciiiccii")
x

#2
factor(x$gender)
x$gender<-factor(x$gender,labels=c("Female","Female","Male"))
x$gender

#3
summary(x$gender)

#4
summary(x$age)
x$age
abs(x$age)
cut_age<-cut(abs(x$age),breaks=c(10,20,30,40,50,60,70,80,90),include.lowest=TRUE,right=FALSE,labels=c("10대","20대","30대","40대","50대","60대","70대","80대"))
summary(cut_age)

#5
x$weight
summary(x$weight)
cor(abs(x$age),x$weight)
plot(abs(x$age),x$weight)

#6
x$body_temp
summary(x$body_temp)
x$dbp
summary(x$dbp)
cor(x$weight,x$body_temp)
plot(x$weight,x$dbp)

#7
x$cancer
summary(x$cancer)
sum(x$cancer=="Y");sum(x$cancer=="N")

#8
x$cancer_onset
str(x$cancer_onset)
x$cancer<-as.Date(x$cancer_onset,"%x-%m-%d")
x$cancer_onset[is.na(x$cancer_onset)]<-"정상"
x$cancer_onset


#패키지 readxl 함수 연습문제2
t<-read.table("sd_data.txt",header=TRUE)
head(t)
t<-read.table("sd_data.txt",header=TRUE,sep=",")
head(t)
t$dataset[t[[1]]=="A"]
t$dataset[t$dataset=="A"]
tx<-t$x[t$dataset==alphabet[1]]
ty<-t$y[t$dataset==alphabet[1]]
t1x=mean(tx)
t1y=mean(t1y)
sdx=sd(tx)
sdy=sd(ty)

for (i in 2:length(alphabet)){
  tx<-t$x[t$dataset==alphabet[i]]
  ty<-t$y[t$dataset==alphabet[i]]
  append(t1x,mean(ty))
  append(t1y,mean(ty))
  append(sdx,sd(tx))
  append(sdy,sd(ty))
  
  #?
  plot()
}

#?
sd_data_g<-subset(sd_data,sd_data$dataset=='A')
head(sd_data_g)
str(sd_data_g)
plot(sd_data_g$x,sd_data_g$y)
