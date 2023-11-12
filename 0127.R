#1-(1)
x<-c(17,16,20,24,22,15,21,18)
length(x)
#1-(2)
x[length(x)]

#2-(1)
y<-c(10.4,5.6,3.1,6.4,9.6,7.8,12.1)
length(y)
#2-(2)
y[length(y)-2]

#11-(1)
y<-c(17,16,20,24,22,15,21,18)
y[which.max(y)]<-23 ; y
#11-(2)
sum(y>20)
#11-(3)
sum(y<18)/mean(y)

#기본R문법 (1)
Husband<-c(186,180,160,186,163,172,170,174,191,182,178,181,168,162,188,168,183,188,166,180,176,185,176,185,169,182,162,169,176,180,157,170,186)
Wife<-c(175,168,154,166,162,152,179,163,172,172,170,170,147,165,162,154,166,167,174,173,164,163,163,171,161,167,160,165,167,175,157,172,181)
mean(Husband)
mean(Wife)
sd(Husband)
sd(Wife)
summary(Husband)
summary(Wife)
cor(Husband,Wife)
cov(Husband,Wife)
plot(Husband,Wife)

#(2)
seq(-5,5,0.2)
c(seq(1,9,2),seq(2,10,2))
rep(1:4,1:4)
rep(1:3,3)
rep(c('a','b'),c(2,3))
paste0('a',1:5)
paste0(rep(c('a','b','c'),3),rep(c('a','b','c'),each=3))

gender<-c("Male","Female","Female")
gender_f<-factor(gender)
gender_f

typeof(gender)
class(gender)
typeof(gender_f)
class(gender_f)

summary(gender)
summary(gender_f)

gender<-c("Male","Female","Female")
gender_f<-factor(gender)
gender_f

x<-c(1,3,2,2,1,4)
factor(x,labels=c("A","B","C","D"))
factor(x,labels=c("A","A","B","B"))

x<-c(1,3,2,2,1,4)
factor(x)
factor(x,labels=c("A","B","C","D"))

typeof(gender_f)
class(gender_f)

summary(gender)
summary(gender_f)

income<-c("Low","Medium","High","Medium")
factor(income, order=TRUE)
factor(income,order=TRUE,level=c("Low","Medium","High"))

x<-c(80,88,90,93,95,94,100,78,65)
x_1<-(x>=0)+(x>=80)+(x>=90)
x_1
cat.x<-factor(x_1,labels=c("C","B","A"))
cat.x

x_2<-(x<=100)+(x<90)+(x<80)
x_2
cat.x<-factor(x_2,labels=c("A","B","C"))
cat.x

x_3<-1*(x>=0&x<80)+2*(x>=80&x<90)+3*(x>=90)
cat.x<-factor(x_3,labels=c("C","B","A"))
cat.x

cat.x<-cut(x,breaks=c(0,80,90,100),include.lowest=TRUE,right=FALSE,labels=c("C","B","A"))
cat.x

cut(x,breaks=c(0,80,90,100),include.lowest=TRUE,right=FALSE,labels=c("C","B","A"),ordered_result=TRUE)

x<-as.Date(c("2020-01-01","2021-01-01"))
x
typeof(x)
x[2]-x[1]

s1<-as.Date("2020-01-25")
s2<-as.Date("2020-02-28")
seq(from=s1,to=s2,by=7)

seq(from=s1,by="week",length=5)
seq(from=s1,by="month",length=5)
seq(from=s1,by="year",length=5)

format(Sys.Date(),"%a,%b,%d")

dates<-c("02/27/92","02/27/92","01/14/92","02/28/92","02/01/92")
as.Date(dates,"%m/%d/%y")
dates<-c("02-27-92","02-27-92","01-14-92","02-28-92","02-01-92")
as.Date(dates,"%m-%d-%y")
dates<-c("92-02-27","92-02-27","92-01-14","92-02-28","92-02-01")
as.Date(dates,"%m-%d-%y")

x<-matrix(1:12,nrow=3)
x
typeof(x)
class(x)
x[1,]
x[,2]
x[1,1]
diag(x)

y<-matrix(1:12,nrow=3,byrow=TRUE)
y

x1<-1:3
x2<-4:6
(A<-cbind(x1,x2))
(B<-rbind(x1,x2))

cbind(A,x3=7:9)
rbind(A,7:8)

x<-1:12
dim(x)<-c(3,4)
x

rownames(x)<-c("one","two","three")
colnames(x)<-c("a","b","c","d")
x

xyz<-array(1:24,c(4,3,2))
x<-matrix(1:24,nrow=3)
x[1,]
x[,2]
x[1:2,]

A<-matrix(1:4,nrow=2,byrow=TRUE)
B<-matrix(5:8,nrow=2,byrow=TRUE)
colMeans(A)
rowSums(A)
diag(A)
x<-c(10,20)
diag(x)

A%*%B
t(A)
diag(2)

df1<-data.frame(x=c(2,4,6),y=c("a","b","c"))
str(df1)
df2<-data.frame(x=c(2,4,6),y=c("a,","b","c"),stringsAsFactors=FALSE)
str(df2)

colnames(df2)
names(df2)
rownames(df2)

df2[1]
df2[[1]]
df2[["x"]]
class(df2[["x"]])
class(df2[["x"]])
df2[c(1,2),1]

head(airquality)
temp<-(airquality$Temp-mean(airquality$Temp))/sd(airquality$Temp)
temp

temp<-with(airquality,(Temp-mean(Temp))/sd(Temp))
temp

attach(airquality)
mean(Temp);mean(Wind)
sd(Tem);sd(Wind)
detach(airquality)
mean(Temp)

x<-c(24,35,28,21)
y<-c("M","F","F","F")
z<-c(2000,3000,3800,2800)
df1<-data.frame(age=x,gender=y,income=z)
attach(df1)
income[3]<-2800
income
df1$income

detach(df1)
