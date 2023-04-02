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

model_2 = lm(Catholic~Education, data)
summary(model_2)