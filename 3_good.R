library("lmtest")
data=read.csv("C:\\Users\\user\\Downloads\\r17i_os26b.csv",header= TRUE , stringsAsFactors= FALSE)
df=data$mj13.2
df
df[df==99999997] <- 0
df[df==99999998] <- 0
df[df==99999999] <- 0
df[is.na(df)] <- 0
data["df"]=df
data <- subset(data,df != 0 )
data$df
