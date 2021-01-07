covid = read.csv("D://我的文件/R程式/期末專題/covid2.csv", header=TRUE, encoding='big5')

world = covid[covid$國家 == "Total/Global", ]
world$ID = c(340:1)

train <- world[21:100,]
test <- world[1:20,]
esti <-world[1:31,]
esti$ID = c(371:341)
esti$檢核日期 = c(31:1)

model = lm(確診數~ID, data=train)
predict(model, test)
predict(model, esti)

model2 = lm(死亡數~ID, data=train)
predict(model2, test)
predict(model2, esti)
