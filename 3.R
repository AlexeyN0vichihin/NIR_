library("lmtest")
data=read.csv("C:\\Users\\ivc116-118\\Downloads\\r17i_os26b.csv",header= TRUE , stringsAsFactors= FALSE)
df=data$mj13.2
df
df[df==99999997] <- 0
df[df==99999998] <- 0
df[df==99999999] <- 0
df[is.na(df)] <- 0
data["money"]=df
data <- subset(data,df != 0 )
data$df

df1=data$m_marst
df1[df1==99999997] <- -1
df1[df1==99999998] <- -1
df1[df1==99999999] <- -1
df1[is.na(df1)] <- -1
data["family"]=df1
data <- subset(data,df1 != -1 )


wed1=data$family
wed1[wed1==2]<-1
wed1[wed1==6]<-1
wed1[wed1!=1]<-0
data["wed1"]=wed1
data$wed1

wed2=data$family
wed2[wed2==5]<-1
wed2[wed2!=1]<-0
data["wed2"]=wed2

wed3=data$family
wed3[wed3==1]<-1
wed3[wed3!=1]<-0
data["wed3"]=wed3

sex=data$mh5
sex[sex==2]<-0
data["sex"]=sex

city_status=data$mi3
city_status[city_status!=1 & city_status<20]<-0
city_status[city_status==99999997] <- -1
city_status[city_status==99999998] <- -1
city_status[city_status==99999999] <- -1
city_status[is.na(city_status)] <- -1
data["city_status"]=city_status
data <- subset(data,city_status != -1 )

higher_educ=data$m_diplom
higher_educ[higher_educ==6]<-1
higher_educ[higher_educ!=1 & higher_educ<200]<-0
higher_educ[higher_educ==99999997] <- -1
higher_educ[higher_educ==99999998] <- -1
higher_educ[higher_educ==99999999] <- -1
higher_educ[is.na(higher_educ)] <- -1
data["higher_educ"]=higher_educ
data <- subset(data,higher_educ != -1 )

data$m_age
data["age"]=data$m_age

work_week=data$mj6.2
work_week[work_week==99999997] <- -1
work_week[work_week==99999998] <- -1
work_week[work_week==99999999] <- -1
data["work_week"]=work_week
data <- subset(data,work_week != -1 )

data$work_week=(data$work_week-mean(data$work_week))/sqrt(var(data$work_week))

data$money=(data$money-mean(data$money))/sqrt(var(data$money))

data$age=(data$age-mean(data$age))/sqrt(var(data$age))

model_1=lm(money~work_week+age+sex+wed1+wed2+wed3+city_status+higher_educ,data)
summary(model_1)

model_2=lm(money~work_week+age+sex+city_status+higher_educ,data)
summary(model_2)

data1=data
data2=data

data1<-subset(data1,wed1!=1)
data1<-subset(data1,city_status!=0)
model_3=lm(money~work_week+age+sex+city_status+higher_educ,data1)
summary(model_3)

data2<-subset(data2,wed2==1)
data2<-subset(data2,sex==0)
data2<-subset(data2,higher_educ==0)
model_4=lm(money~work_week+age+sex+city_status+higher_educ,data2)
summary(model_4)
