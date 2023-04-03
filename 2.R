library("lmtest")
data=mtcars
help(mtcars)

model_1=lm(mpg~wt+cyl+qsec+drat,data)
summary(model_1)
#Проверяем регрессоры на линейную зависимость, смотрим число * в первой модели
model_1_1=lm(wt~cyl+qsec+drat,data)
summary(model_1_1)

model_1_2=lm(cyl~wt+qsec+drat,data)
summary(model_1_2)

model_1_3=lm(qsec~cyl+wt+drat,data)
summary(model_1_3)

model_1_4=lm(drat~cyl+wt+qsec,data)
summary(model_1_4)

#Исключаем  регрессоры cyl и drat
model_2=lm(mpg~qsec+wt,data)
summary(model_2)

model_2_1=lm(qsec~wt,data)#R=0,03, значит линейной зависимости между оставшимися регресорами нет
summary(model_2_1)
#Проверка разных моделей с регресорами wt и qsec
model_3=lm(mpg~log(qsec)+log(wt),data)#Лучшая модель R=0,871
summary(model_3)

model_4=lm(mpg~log(qsec)+wt,data)#R=0,81
summary(model_4)

model_5=lm(mpg~qsec+log(wt),data)#R=0,8696
summary(model_5)

model_6=lm(mpg~qsec*wt,data)#R=0,81
summary(model_6)

model_7=lm(mpg~log(qsec*wt),data)#R=0,59
summary(model_7)

model_8=lm(mpg~qsec*qsec+wt*wt,data)#R=0,81
summary(model_8)

model_9=lm(mpg~qsec*wt+wt*wt,data)#R=0,82
summary(model_9)

model_10=lm(mpg~wt*wt,data)#R=0,74
summary(model_10)

model_11=lm(mpg~qsec*qsec,data)#R=0,14
summary(model_11)

model_12=lm(mpg~log(qsec),data)#R=0,15
summary(model_12)

model_13=lm(mpg~log(wt),data)#R=0,80
summary(model_13)

model_14=lm(mpg~wt,data)#R=0,74
summary(model_14)

#--------------------------------------

summary(model_3)
t_critical = qt(0.975, df = 29)
t_critical#Коэффициент стьюдента равен=2.05
#Доверительный интервал для log(qsec) равен [8,05 ; 24,33]
#Доверительный интервал для log(wt) равен [-13,61 ; -18,72]
new.data=data.frame(qsec=40,wt=2)
predict(model_3,new.data,interval = "confidence")#Прогноз [-33.63 ; 46,70]
