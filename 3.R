library("lmtest")
data=read.csv("C:\\Users\\user\\Downloads\\r17i_os26b.csv",header= TRUE , stringsAsFactors= FALSE)
df=data$mj13.2
df
df[df==99999997] <- 0
df[df==99999998] <- 0
df[df==99999999] <- 0
df[is.na(df)] <- 0
k=mean(df[df!=0])
df[df==0]<-k
data["df"]=df

data$mi3
df1=data$mi3
df1[df1==99999997] <- 0
df1[df1==99999998] <- 0
df1[df1==99999999] <- 0
df1[is.na(df1)] <- 0
k1=mean(df1[df1!=0])
df1[df1==0]<-k1
data["df1"]=df1

model_1=lm(df1~df,data)
summary(model_1)
plot(data$df,data$df1)
