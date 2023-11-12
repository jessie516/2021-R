y1<-c(1,3,5) ; y1
length(y1)
a<-1 ; a

x<-seq(from=0, to=2*pi, by=0.01)
x1<-seq(from=0, to=2*pi, by=0.02)
y<-sin(x)
y1<-cos(x1)
plot(x, y)
plot(x1,y1)

seq(from=3,to=6,length=5)
seq(from=1,to=-3,length=5)
seq(from=1,to=-3,length=7)
seq(-3)

x<-seq(from=0, to=2, by=0.25) ; x
x[3]
x[c(1,3)]
x[1,3]

1:3
1:10
-3:3
1.5:5.4
3:-5

rep(1:3,5)
rep(2:3, imes=2)
rep(2:3,each=2,times=2)
rep(c("large","small"),times=c(2,3))

Husband<-c(186,180,160,186,163,172,170,174,191,182,178,181,168,162,188,168,183,188,166,180,176,185,176,185,169,182,162,169,176,180,157,170,186)
Wife<-c(175,168,154,166,162,152,179,163,172,172,170,170,147,165,162,154,166,167,174,173,164,163,163,171,161,167,160,165,167,175,157,172,181)

x<-1:10 ; x
x[c(2,4,6,8)]
x[c(-2,-4,-6,-8)]
x[c(1,11)]
x[c(3,3,3,3,3)]

x<-c(100,3L,TRUE,FALSE) ; x
x[x>5]
x[x<5]

c(Seoul=9930,Busan=3497,Inchon=2944)

pop<-c(9930,3497,2944) ; pop
names(pop)<-c("Seoul", "Busan","Inchon")

x<-c(10,11,12,13,14)
c(x,15)
y<-c(16,17,18)
c(x,y)
append(x,15)
append(x,15,after=2)
append(x,y)
append(x,y,after=3)

x<-c("Park","Lee","Kwon") ; x
nchar(x)
nchar("데이터사이언스학과")
nchar("데이터사이언스 학과")

paste("원주율은",pi,"이다.")
paste("모든","사람에게는","창의적","사고능력이","필요하다.")
paste("모든","사람에게는","창의적","사고능력이","필요하다.",sep="-")
paste("모든","사람에게는","창의적","사고능력이","필요하다.",sep="")

paste("science",1:3,sep="")
paste(c("science","math"),1:3,sep="-")

paste0("science",1:3)
paste("science",1:3,sep="")

letters
paste0(letters,collapse="")
paste0(letters,collpase=",")
paste0(LETTERS,collapse="")

substr("data science",1,4)
x<-c("데이터사이언스학과","문화컨텐츠학과","스포치과학 학과")
substr(x,3,6)

x<-c("New York, NY", "Ann Arbor, MI", "Chicago, IL") ; x
substr(x, start=nchar(x)-1, stop=nchar(x))
(short_name<-substr(x,start=nchar(x)-1,stop=nchar(x)))
(full_name<-substr(x,start=1,stop=nchar(x)-4))
c(short_name,full_name)
(y<-strsplit(x,split=","))
u=unlist(y) ; u
u[1]
unlist(strsplit(u[1],split=""))

x<-c("park","lee","kwon")
(y<-toupper(x))
tolower(y)
substr(x,1,1)<-toupper(substr(x,1,1)) ; x

x<-"Lee hates R-programming. He hates python, too"
sub("hat","lov",x)
gsub("hat","lov",x)

z<-"Everybody cannot do it"
sub("not","",z)

(y<-paste0("banana",1:3))
sub("a","A",y)
gsub("a","A",y)

x<-c(7,8,9,10)
y<-c(1,2,3,4)
x+y
x-y
x*y
x/y
x^y
x+3
x/4
2^x

c(1,2,3,4,5,6)+c(1,2,3)

x<-c(1,0,3,5,NA)
is.na(x)
sum(is.na(x))
mean(x) ; max(x)
mean(x,na.rm=TRUE) ; max(x,na.rm=TRUE)

x<-c(3,8,2)
y<-c(5,4,2)
x>y
x>=y
x<y
x<=y
x==y
x!=y

x<-1:3
x>2
x<2
x<=2|x>=3
x<=2&x>=1

x<-1:5
x>=4
sum(x>=4)
mean(x>=4)

x<-1:5
x %in% c(2,4)

y<-c(2,4,6,8,10)
y[c(TRUE,TRUE,FALSE,FALSE,TRUE)]
y>3
y[y>3]

x<-c(80,88,90,93,95,94,99,78,101)
x>=mean(x)
x[x>=mean(x)]

z<-(x-mean(x))/sd(x)
x[abs(z)<=1]
x[abs(z)>1&abs(z)<=2]
x[abs(z)>2]