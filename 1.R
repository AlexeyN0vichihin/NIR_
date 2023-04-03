library("lmtest")
data=swiss

mean(data$Catholic)
var(data$Catholic)
sd(data$Catholic)

mean(data$Examination)
var(data$Examination)
sd(data$Examination)

mean(data$Education)
var(data$Education)
sd(data$Education)

model_1 = lm(Catholic~Examination, data)
summary(model_1)
#Построенная зависимость: Catholic(Examination)=90,51+(-3)*Examination
#t-статистика показывает, что Catholic зависит от Examination, зависимость отрицательная
#R-squared=0,31, показывает, что данная модель плохо предсказывает значение Catholic
model_2 = lm(Catholic~Education, data)
summary(model_2)
#t-Статистика и R-squared, показывают на отсутствие линейной зависимости между Catholic и Education
#Построенная зависимость: Catholic(Education)=48,47+(-0,67)*Education