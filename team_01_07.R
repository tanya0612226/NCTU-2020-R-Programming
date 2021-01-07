covid = read.csv("D://иゅン/R祘Α/戳ソ盡肈/covid2.csv", header=TRUE, encoding='big5')

world = covid[covid$瓣產 == "Total/Global", ]
world$ID = c(340:1)

train <- world[21:100,]
test <- world[1:20,]
esti <-world[1:31,]
esti$ID = c(371:341)
esti$浪ら戳 = c(31:1)

model = lm(絋禘计~ID, data=train)
predict(model, test)
predict(model, esti)
plot(train$絋禘计~train$ID, col="blue")
abline(model,col="red")
plot(test$絋禘计~test$ID, col="blue")
abline(model,col="red")

model2 = lm(计~ID, data=train)
predict(model2, test)
predict(model2, esti)
plot(train$计~train$ID, col="blue")
abline(model2,col="red")
plot(test$计~test$ID, col="blue")
abline(model2,col="red")
