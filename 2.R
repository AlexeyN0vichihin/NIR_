library("lmtest")
data=mtcars
help(mtcars)

model_1=lm(mpg~wt+cyl+qsec+drat,data)
summary(model_1)

model_1_1=lm(wt~cyl+qsec+drat,data)
summary(model_1_1)

model_1_2=lm(cyl~wt+qsec+drat,data)
summary(model_1_2)

model_1_3=lm(qsec~cyl+wt+drat,data)
summary(model_1_3)

model_1_4=lm(drat~cyl+wt+qsec,data)
summary(model_1_4)

model_2=lm(mpg~qsec+wt,data)
summary(model_2)

model_2_1=lm(qsec~wt,data)
summary(model_2_1)

model_3=lm(mpg~log(qsec)+log(wt),data)#Лучшая модуль R=0,87
summary(model_3)

model_4=lm(mpg~log(qsec)+wt,data)
summary(model_4)

model_5=lm(mpg~qsec+log(wt),data)
summary(model_5)

model_6=lm(mpg~qsec*wt,data)
summary(model_6)

model_7=lm(mpg~log(qsec*wt),data)
summary(model_7)

model_8=lm(mpg~qsec*qsec+wt*wt,data)
summary(model_8)

model_9=lm(mpg~qsec*wt+wt*wt,data)
summary(model_9)

model_10=lm(mpg~wt*wt,data)
summary(model_10)

model_11=lm(mpg~qsec*qsec,data)
summary(model_11)

model_12=lm(mpg~log(qsec),data)
summary(model_12)

model_13=lm(mpg~log(wt),data)
summary(model_13)

model_14=lm(mpg~wt,data)
summary(model_14)

#--------------------------------------

summary(model_3)
#[здесь доверительный интервал]

