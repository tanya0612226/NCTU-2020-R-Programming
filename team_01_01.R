#���Ū��
covid = read.csv("C://Users/Tanya/Desktop/covid1.csv", header=TRUE, encoding='big5')

#�N���y����Ƨ�X��
world = covid[covid$��a == "Total/Global", ]
world$ID = c(340:1)

#��X���`�v
���`�v = c(1:340)
for (c in 1:340) {
  ���`�v[c] = world$���`��[c]/world$�T�E��[c]
}
world <- cbind(world, ���`�v)

#��X���T�E�q
���T�E�q = c(1:340)
for (c in 1:340) {
  if(c == 340){
    ���T�E�q[c] = world$�T�E��[c]
  }
  else{
    ���T�E�q[c] = world$�T�E��[c] - world$�T�E��[c+1]
  }
}
world <- cbind(world, ���T�E�q)

#�@��
library(ggplot2)
ggplot(world, aes(x = ID, y = �T�E��)) +geom_line()+
     labs(title="���y�`�T�E�Ʀ��u", x ="�Ѽ�", y = "�T�E��")+theme_bw()

ggplot(world, aes(x = ID, y = ���`��)) +geom_line()+
  labs(title="���y�`���`�Ʀ��u", x ="�Ѽ�", y = "���`��")+theme_bw()

ggplot(world, aes(x = ID, y = ���`�v)) +geom_line()+
  labs(title="���y�`���`�v���u", x ="�Ѽ�", y = "���`�v")+theme_bw()

#��X�C��̫�@�Ѫ��ƾ�
world0 = world[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
world0$ID = c(12:1)
���T�E�q = c(1:12)
for (c in 1:12) {
  if(c == 12){
    ���T�E�q[c] = world0$�T�E��[c]
  }
  else{
    ���T�E�q[c] = world0$�T�E��[c] - world0$�T�E��[c+1]
  }
}
world0 <- cbind(world0, ���T�E�q)

#�@��
ggplot(data=world0) + 
     geom_point(aes(x=ID, y=���T�E�q, col=2), stat = "identity") + 
     geom_line(aes(x=ID, y=���T�E�q, col=2), stat = "identity") +
     labs(title="���y���T�E�q", x ="���", y = "�T�E��") + theme_bw() 