packageNames <- c("dplyr", "stringr", "data.table", "ggplot2", "maptools", "knitr", "mapproj", "RColorBrewer", "rgdal")
install.packages(packageNames)
require(maps)
require(sp)
library(dplyr)
library(stringr)
library(data.table)
library(maptools)
library(knitr)
library(mapproj)
library(RColorBrewer)
install.packages("pracma")
library(pracma)

library(rgdal)
library(ggplot2)

#Ū��covid2.csv��
covid = read.csv("C:/Users/Jimmy/Desktop/R/�������i/�s�W��Ƨ� (3)/covid2.csv", header=TRUE, encoding='big5')

#�Ncovid2.csv���U�Ӱ�a����ƬD�X�A�ç�C�Ӥ몺��Ƭۥ[�H�D�X�����
#�A�D�X�Ӱ�a�����`�v
TW = covid[covid$��a == "TW/Taiwan", ]
Taiwan = TW[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Taiwan$ID = c(12:1)
Taiwan$region = "Taiwan"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Taiwan$���`��[c]/Taiwan$�T�E��[c]
}
Taiwan <- cbind(Taiwan, ���`�v)

KR = covid[covid$��a == "KR/Korea, Republic of", ]
SouthKorea = KR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthKorea$ID = c(12:1)
SouthKorea$region = "SouthKorea"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = SouthKorea$���`��[c]/SouthKorea$�T�E��[c]
}
SouthKorea <- cbind(SouthKorea, ���`�v)

JP = covid[covid$��a == "JP/Japan", ]
Japan = JP[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Japan$ID = c(12:1)
Japan$region = "Japan"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Japan$���`��[c]/Japan$�T�E��[c]
}
Japan <- cbind(Japan, ���`�v)

CN = covid[covid$��a == "CN/China", ]
China = CN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
China$ID = c(12:1)
China$region = "China"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = China$���`��[c]/China$�T�E��[c]
}
China <- cbind(China, ���`�v)

IN = covid[covid$��a == "IN/India", ]
India = IN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
India$ID = c(12:1)
India$region = "India"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = India$���`��[c]/India$�T�E��[c]
}
India <- cbind(India, ���`�v)

AU = covid[covid$��a == "AU/Australia", ]
Australia = AU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Australia$ID = c(12:1)
Australia$region = "Australia"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Australia$���`��[c]/Australia$�T�E��[c]
}
Australia <- cbind(Australia, ���`�v)

NZ = covid[covid$��a == "NZ/New Zealand", ]
NewZealand = NZ[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
NewZealand$ID = c(12:1)
NewZealand$region = "New Zealand"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = NewZealand$���`��[c]/NewZealand$�T�E��[c]
}
NewZealand <- cbind(NewZealand, ���`�v)

ID = covid[covid$��a == "ID/Indonesia", ]
Indonesia = ID[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Indonesia$ID = c(12:1)
Indonesia$region = "Indonesia"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Indonesia$���`��[c]/Indonesia$�T�E��[c]
}
Indonesia <- cbind(Indonesia, ���`�v)

SG = covid[covid$��a == "SG/Singapore", ]
Singapore = SG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Singapore$ID = c(12:1)
Singapore$region = "Singapore"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Singapore$���`��[c]/Singapore$�T�E��[c]
}
Singapore <- cbind(Singapore, ���`�v)

RU = covid[covid$��a == "RU/Russian Federation", ]
Russia = RU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Russia$ID = c(12:1)
Russia$region = "Russia"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Russia$���`��[c]/Russia$�T�E��[c]
}
Russia <- cbind(Russia, ���`�v)

US = covid[covid$��a == "US/United States", ]
USA = US[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
USA$ID = c(12:1)
USA$region = "USA"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = USA$���`��[c]/USA$�T�E��[c]
}
USA <- cbind(USA, ���`�v)

CA = covid[covid$��a == "CA/Canada", ]
Canada = CA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Canada$ID = c(12:1)
Canada$region = "Canada"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Canada$���`��[c]/Canada$�T�E��[c]
}
Canada <- cbind(Canada, ���`�v)


BR = covid[covid$��a == "BR/Brazil", ]
Brazil = BR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Brazil$ID = c(12:1)
Brazil$region = "Brazil"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Brazil$���`��[c]/Brazil$�T�E��[c]
}
Brazil <- cbind(Brazil, ���`�v)

MX = covid[covid$��a == "MX/Mexico", ]
Mexico = MX[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Mexico$ID = c(12:1)
Mexico$region = "Mexico"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Mexico$���`��[c]/Mexico$�T�E��[c]
}
Mexico <- cbind(Mexico, ���`�v)

PE = covid[covid$��a == "PE/Peru", ]
Peru = PE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Peru$ID = c(12:1)
Peru$region = "Peru"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Peru$���`��[c]/Peru$�T�E��[c]
}
Peru <- cbind(Peru, ���`�v)

AR = covid[covid$��a == "AR/Argentina", ]
Argentina = AR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Argentina$ID = c(12:1)
Argentina$region = "Argentina"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Argentina$���`��[c]/Argentina$�T�E��[c]
}
Argentina <- cbind(Argentina, ���`�v)

CO = covid[covid$��a == "CO/Colombia", ]
Colombia = CO[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Colombia$ID = c(12:1)
Colombia$region = "Colombia"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Colombia$���`��[c]/Colombia$�T�E��[c]
}
Colombia <- cbind(Colombia, ���`�v)

EG = covid[covid$��a == "EG/Egypt", ]
Egypt = EG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Egypt$ID = c(12:1)
Egypt$region = "Egypt"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Egypt$���`��[c]/Egypt$�T�E��[c]
}
Egypt <- cbind(Egypt, ���`�v)

ZA = covid[covid$��a == "ZA/South Africa", ]
SouthAfrica = ZA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthAfrica$ID = c(12:1)
SouthAfrica$region = "South Africa"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = SouthAfrica$���`��[c]/SouthAfrica$�T�E��[c]
}
SouthAfrica <- cbind(SouthAfrica, ���`�v)

TR = covid[covid$��a == "TR/Turkey", ]
Turkey = TR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Turkey$ID = c(12:1)
Turkey$region = "Turkey"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Turkey$���`��[c]/Turkey$�T�E��[c]
}
Turkey <- cbind(Turkey, ���`�v)

IR = covid[covid$��a == "IR/Iran, Islamic Republic of", ]
Iran = IR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Iran$ID = c(12:1)
Iran$region = "Iran"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Iran$���`��[c]/Iran$�T�E��[c]
}
Iran <- cbind(Iran, ���`�v)

GB = covid[covid$��a == "GB/United Kingdom", ]
UK = GB[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
UK$ID = c(12:1)
UK$region = "UK"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = UK$���`��[c]/UK$�T�E��[c]
}
UK <- cbind(UK, ���`�v)

FR = covid[covid$��a == "FR/France", ]
France = FR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
France$ID = c(12:1)
France$region = "France"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = France$���`��[c]/France$�T�E��[c]
}
France <- cbind(France, ���`�v)

DE = covid[covid$��a == "DE/Germany", ]
Germany = DE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Germany$ID = c(12:1)
Germany$region = "Germany"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Germany$���`��[c]/Germany$�T�E��[c]
}
Germany <- cbind(Germany, ���`�v)

IT = covid[covid$��a == "IT/Italy", ]
Italy = IT[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Italy$ID = c(12:1)
Italy$region = "Italy"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Italy$���`��[c]/Italy$�T�E��[c]
}
Italy <- cbind(Italy, ���`�v)

ES = covid[covid$��a == "ES/Spain", ]
Spain = ES[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Spain$ID = c(12:1)
Spain$region = "Spain"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Spain$���`��[c]/Spain$�T�E��[c]
}
Spain <- cbind(Spain, ���`�v)

PL = covid[covid$��a == "PL/Poland", ]
Poland = PL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Poland$ID = c(12:1)
Poland$region = "Poland"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Poland$���`��[c]/Poland$�T�E��[c]
}
Poland <- cbind(Poland, ���`�v)

UA = covid[covid$��a == "UA/Ukraine", ]
Ukraine = UA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Ukraine$ID = c(12:1)
Ukraine$region = "Ukraine"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Ukraine$���`��[c]/Ukraine$�T�E��[c]
}
Ukraine <- cbind(Ukraine, ���`�v)

SE = covid[covid$��a == "SE/Sweden", ]
Sweden = SE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Sweden$ID = c(12:1)
Sweden$region = "Sweden"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Sweden$���`��[c]/Sweden$�T�E��[c]
}
Sweden <- cbind(Sweden, ���`�v)

NL = covid[covid$��a == "NL/Netherlands", ]
Netherlands = NL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Netherlands$ID = c(12:1)
Netherlands$region = "Netherlands"
���`�v = c(1:12)
for (c in 1:12) {
  ���`�v[c] = Netherlands$���`��[c]/Netherlands$�T�E��[c]
}
Netherlands <- cbind(Netherlands, ���`�v)

#�N�D���a����ƦX�b�@�_�A�A���Ӥ�����}
contrys <- rbind(Taiwan, SouthKorea, Japan, China, India                 
                 , Australia, NewZealand, Indonesia, Singapore
                 , Russia, USA, Canada, Brazil, Mexico, Peru
                 , Argentina, Colombia, Egypt, SouthAfrica, Turkey
                 , Iran, UK, France, Germany, Italy, Spain, Poland
                 , Ukraine, Sweden, Netherlands)

countrys1 = contrys[contrys$ID == "1", ]
countrys2 = contrys[contrys$ID == "2", ]
countrys3 = contrys[contrys$ID == "3", ]
countrys4 = contrys[contrys$ID == "4", ]
countrys5 = contrys[contrys$ID == "5", ]
countrys6 = contrys[contrys$ID == "6", ]
countrys7 = contrys[contrys$ID == "7", ]
countrys8 = contrys[contrys$ID == "8", ]
countrys9 = contrys[contrys$ID == "9", ]
countrys10 = contrys[contrys$ID == "10", ]
countrys11 = contrys[contrys$ID == "11", ]
countrys12 = contrys[contrys$ID == "12", ]

#���J���ئa����
world_map <- map_data("world")

#�N�C���Ƥ��O�P�a����merge�A�A�H���`�v����¦�e���@�ɦa��
map.plot1 <- merge(world_map, countrys1, by="region", all.x=T)
map.plot1 <- map.plot1[order(map.plot1$order), ]

ggplot(map.plot1, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot2 <- merge(world_map, countrys2, by="region", all.x=T)
map.plot2 <- map.plot2[order(map.plot2$order), ]

ggplot(map.plot2, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot3 <- merge(world_map, countrys3, by="region", all.x=T)
map.plot3 <- map.plot3[order(map.plot3$order), ]

ggplot(map.plot3, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot4 <- merge(world_map, countrys4, by="region", all.x=T)
map.plot4 <- map.plot4[order(map.plot4$order), ]

ggplot(map.plot4, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot5 <- merge(world_map, countrys5, by="region", all.x=T)
map.plot5 <- map.plot5[order(map.plot5$order), ]

ggplot(map.plot5, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot6 <- merge(world_map, countrys6, by="region", all.x=T)
map.plot6 <- map.plot6[order(map.plot6$order), ]

ggplot(map.plot6, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot7 <- merge(world_map, countrys7, by="region", all.x=T)
map.plot7 <- map.plot7[order(map.plot7$order), ]

ggplot(map.plot7, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot8 <- merge(world_map, countrys8, by="region", all.x=T)
map.plot8 <- map.plot8[order(map.plot8$order), ]

ggplot(map.plot8, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot9 <- merge(world_map, countrys9, by="region", all.x=T)
map.plot9 <- map.plot9[order(map.plot9$order), ]

ggplot(map.plot9, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot10 <- merge(world_map, countrys10, by="region", all.x=T)
map.plot10 <- map.plot10[order(map.plot10$order), ]

ggplot(map.plot10, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot11 <- merge(world_map, countrys11, by="region", all.x=T)
map.plot11 <- map.plot11[order(map.plot11$order), ]

ggplot(map.plot11, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot12 <- merge(world_map, countrys12, by="region", all.x=T)
map.plot12 <- map.plot12[order(map.plot12$order), ]

ggplot(map.plot12, aes(x = long, y = lat, group = group, fill = ���`�v)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()
