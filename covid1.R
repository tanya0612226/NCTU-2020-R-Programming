covid = read.csv("C://Users/Tanya/Desktop/covid2.csv", header=TRUE, encoding='big5')
covid12 = covid[1:6510,]
covid11 = covid[6511:12810,]
covid10 = covid[12811:19320,]
covid9 = covid[19321:25620,]
covid8 = covid[25621:32130,]
covid7 = covid[32131:38640,]
covid6 = covid[38641:44940,]
covid5 = covid[44941:51450,]
covid4 = covid[51451:57750,]
covid3 = covid[57751:64260,]
covid2 = covid[64261:70350,]
covid1 = covid[70351:71400,]

covid0 <- covid[1:12,]
covid0 <- covid0[c(3,4,5)]
a = c(1:12)
p = c(sum(covid1$絋禘计), sum(covid2$絋禘计), sum(covid3$絋禘计), 
      sum(covid4$絋禘计), sum(covid5$絋禘计), sum(covid6$絋禘计), 
      sum(covid7$絋禘计), sum(covid8$絋禘计), sum(covid9$絋禘计), 
      sum(covid10$絋禘计), sum(covid11$絋禘计), sum(covid12$絋禘计))
d = c(sum(covid1$计), sum(covid2$计), sum(covid3$计), 
      sum(covid4$计), sum(covid5$计), sum(covid6$计), 
      sum(covid7$计), sum(covid8$计), sum(covid9$计), 
      sum(covid10$计), sum(covid11$计), sum(covid12$计))
covid0$浪ら戳 = a
covid0$絋禘计 = p
covid0$计 = d

library(ggplot2)
ggplot(data=covid0) + 
  geom_point(aes(x=浪ら戳, y=絋禘计, col=4)) + 
  geom_point(aes(x=浪ら戳, y=计, col=2)) + 
  geom_line(aes(x=浪ら戳, y=絋禘计, col=4)) + 
  geom_line(aes(x=浪ら戳, y=计, col=2)) +
  theme_bw()

ggplot(data=covid0) + 
  geom_point(aes(x=浪ら戳, y=絋禘计, col=4)) + 
  geom_line(aes(x=浪ら戳, y=絋禘计, col=4)) + 
  theme_bw()

ggplot(data=covid0) + 
  geom_point(aes(x=浪ら戳, y=计, col=2)) + 
  geom_line(aes(x=浪ら戳, y=计, col=2)) +
  theme_bw()