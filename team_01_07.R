covid = read.csv("D://�ڪ����/R�{��/�����M�D/covid2.csv", header=TRUE, encoding='big5')

world = covid[covid$��a == "Total/Global", ]
world$ID = c(340:1)

train <- world[21:100,]
test <- world[1:20,]
esti <-world[1:31,]
esti$ID = c(371:341)
esti$�ˮ֤�� = c(31:1)

model = lm(�T�E��~ID, data=train)
predict(model, test)
predict(model, esti)
plot(train$�T�E��~train$ID, col="blue")
abline(model,col="red")
plot(test$�T�E��~test$ID, col="blue")
abline(model,col="red")

model2 = lm(���`��~ID, data=train)
predict(model2, test)
predict(model2, esti)
plot(train$���`��~train$ID, col="blue")
abline(model2,col="red")
plot(test$���`��~test$ID, col="blue")
abline(model2,col="red")