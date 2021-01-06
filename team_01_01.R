#戈弄
covid = read.csv("C://Users/Tanya/Desktop/covid1.csv", header=TRUE, encoding='big5')

#盢瞴戈ъㄓ
world = covid[covid$瓣產 == "Total/Global", ]
world$ID = c(340:1)

#衡瞯
瞯 = c(1:340)
for (c in 1:340) {
  瞯[c] = world$计[c]/world$絋禘计[c]
}
world <- cbind(world, 瞯)

#衡虫ら絋禘秖
虫ら絋禘秖 = c(1:340)
for (c in 1:340) {
  if(c == 340){
    虫ら絋禘秖[c] = world$絋禘计[c]
  }
  else{
    虫ら絋禘秖[c] = world$絋禘计[c] - world$絋禘计[c+1]
  }
}
world <- cbind(world, 虫ら絋禘秖)

#瓜
library(ggplot2)
ggplot(world, aes(x = ID, y = 絋禘计)) +geom_line()+
     labs(title="瞴羆絋禘计Ρ絬", x ="ぱ计", y = "絋禘计")+theme_bw()

ggplot(world, aes(x = ID, y = 计)) +geom_line()+
  labs(title="瞴羆计Ρ絬", x ="ぱ计", y = "计")+theme_bw()

ggplot(world, aes(x = ID, y = 瞯)) +geom_line()+
  labs(title="瞴羆瞯Ρ絬", x ="ぱ计", y = "瞯")+theme_bw()

#ъ–る程ぱ计沮
world0 = world[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
world0$ID = c(12:1)
虫る絋禘秖 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    虫る絋禘秖[c] = world0$絋禘计[c]
  }
  else{
    虫る絋禘秖[c] = world0$絋禘计[c] - world0$絋禘计[c+1]
  }
}
world0 <- cbind(world0, 虫る絋禘秖)

#瓜
ggplot(data=world0) + 
     geom_point(aes(x=ID, y=虫る絋禘秖, col=2), stat = "identity") + 
     geom_line(aes(x=ID, y=虫る絋禘秖, col=2), stat = "identity") +
     labs(title="瞴虫る絋禘秖", x ="る", y = "絋禘计") + theme_bw() 