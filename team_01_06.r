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

#弄covid2.csv郎
covid = read.csv("C:/Users/Jimmy/Desktop/R/戳ソ厨/穝糤戈Ж (3)/covid2.csv", header=TRUE, encoding='big5')

#盢covid2.csvい瓣產戈珼р–る戈―虫る戈
#―赣瓣產瞯
TW = covid[covid$瓣產 == "TW/Taiwan", ]
Taiwan = TW[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Taiwan$ID = c(12:1)
Taiwan$region = "Taiwan"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Taiwan$计[c]/Taiwan$絋禘计[c]
}
Taiwan <- cbind(Taiwan, 瞯)

KR = covid[covid$瓣產 == "KR/Korea, Republic of", ]
SouthKorea = KR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthKorea$ID = c(12:1)
SouthKorea$region = "SouthKorea"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = SouthKorea$计[c]/SouthKorea$絋禘计[c]
}
SouthKorea <- cbind(SouthKorea, 瞯)

JP = covid[covid$瓣產 == "JP/Japan", ]
Japan = JP[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Japan$ID = c(12:1)
Japan$region = "Japan"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Japan$计[c]/Japan$絋禘计[c]
}
Japan <- cbind(Japan, 瞯)

CN = covid[covid$瓣產 == "CN/China", ]
China = CN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
China$ID = c(12:1)
China$region = "China"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = China$计[c]/China$絋禘计[c]
}
China <- cbind(China, 瞯)

IN = covid[covid$瓣產 == "IN/India", ]
India = IN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
India$ID = c(12:1)
India$region = "India"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = India$计[c]/India$絋禘计[c]
}
India <- cbind(India, 瞯)

AU = covid[covid$瓣產 == "AU/Australia", ]
Australia = AU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Australia$ID = c(12:1)
Australia$region = "Australia"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Australia$计[c]/Australia$絋禘计[c]
}
Australia <- cbind(Australia, 瞯)

NZ = covid[covid$瓣產 == "NZ/New Zealand", ]
NewZealand = NZ[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
NewZealand$ID = c(12:1)
NewZealand$region = "New Zealand"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = NewZealand$计[c]/NewZealand$絋禘计[c]
}
NewZealand <- cbind(NewZealand, 瞯)

ID = covid[covid$瓣產 == "ID/Indonesia", ]
Indonesia = ID[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Indonesia$ID = c(12:1)
Indonesia$region = "Indonesia"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Indonesia$计[c]/Indonesia$絋禘计[c]
}
Indonesia <- cbind(Indonesia, 瞯)

SG = covid[covid$瓣產 == "SG/Singapore", ]
Singapore = SG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Singapore$ID = c(12:1)
Singapore$region = "Singapore"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Singapore$计[c]/Singapore$絋禘计[c]
}
Singapore <- cbind(Singapore, 瞯)

RU = covid[covid$瓣產 == "RU/Russian Federation", ]
Russia = RU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Russia$ID = c(12:1)
Russia$region = "Russia"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Russia$计[c]/Russia$絋禘计[c]
}
Russia <- cbind(Russia, 瞯)

US = covid[covid$瓣產 == "US/United States", ]
USA = US[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
USA$ID = c(12:1)
USA$region = "USA"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = USA$计[c]/USA$絋禘计[c]
}
USA <- cbind(USA, 瞯)

CA = covid[covid$瓣產 == "CA/Canada", ]
Canada = CA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Canada$ID = c(12:1)
Canada$region = "Canada"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Canada$计[c]/Canada$絋禘计[c]
}
Canada <- cbind(Canada, 瞯)


BR = covid[covid$瓣產 == "BR/Brazil", ]
Brazil = BR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Brazil$ID = c(12:1)
Brazil$region = "Brazil"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Brazil$计[c]/Brazil$絋禘计[c]
}
Brazil <- cbind(Brazil, 瞯)

MX = covid[covid$瓣產 == "MX/Mexico", ]
Mexico = MX[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Mexico$ID = c(12:1)
Mexico$region = "Mexico"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Mexico$计[c]/Mexico$絋禘计[c]
}
Mexico <- cbind(Mexico, 瞯)

PE = covid[covid$瓣產 == "PE/Peru", ]
Peru = PE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Peru$ID = c(12:1)
Peru$region = "Peru"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Peru$计[c]/Peru$絋禘计[c]
}
Peru <- cbind(Peru, 瞯)

AR = covid[covid$瓣產 == "AR/Argentina", ]
Argentina = AR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Argentina$ID = c(12:1)
Argentina$region = "Argentina"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Argentina$计[c]/Argentina$絋禘计[c]
}
Argentina <- cbind(Argentina, 瞯)

CO = covid[covid$瓣產 == "CO/Colombia", ]
Colombia = CO[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Colombia$ID = c(12:1)
Colombia$region = "Colombia"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Colombia$计[c]/Colombia$絋禘计[c]
}
Colombia <- cbind(Colombia, 瞯)

EG = covid[covid$瓣產 == "EG/Egypt", ]
Egypt = EG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Egypt$ID = c(12:1)
Egypt$region = "Egypt"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Egypt$计[c]/Egypt$絋禘计[c]
}
Egypt <- cbind(Egypt, 瞯)

ZA = covid[covid$瓣產 == "ZA/South Africa", ]
SouthAfrica = ZA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthAfrica$ID = c(12:1)
SouthAfrica$region = "South Africa"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = SouthAfrica$计[c]/SouthAfrica$絋禘计[c]
}
SouthAfrica <- cbind(SouthAfrica, 瞯)

TR = covid[covid$瓣產 == "TR/Turkey", ]
Turkey = TR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Turkey$ID = c(12:1)
Turkey$region = "Turkey"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Turkey$计[c]/Turkey$絋禘计[c]
}
Turkey <- cbind(Turkey, 瞯)

IR = covid[covid$瓣產 == "IR/Iran, Islamic Republic of", ]
Iran = IR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Iran$ID = c(12:1)
Iran$region = "Iran"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Iran$计[c]/Iran$絋禘计[c]
}
Iran <- cbind(Iran, 瞯)

GB = covid[covid$瓣產 == "GB/United Kingdom", ]
UK = GB[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
UK$ID = c(12:1)
UK$region = "UK"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = UK$计[c]/UK$絋禘计[c]
}
UK <- cbind(UK, 瞯)

FR = covid[covid$瓣產 == "FR/France", ]
France = FR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
France$ID = c(12:1)
France$region = "France"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = France$计[c]/France$絋禘计[c]
}
France <- cbind(France, 瞯)

DE = covid[covid$瓣產 == "DE/Germany", ]
Germany = DE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Germany$ID = c(12:1)
Germany$region = "Germany"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Germany$计[c]/Germany$絋禘计[c]
}
Germany <- cbind(Germany, 瞯)

IT = covid[covid$瓣產 == "IT/Italy", ]
Italy = IT[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Italy$ID = c(12:1)
Italy$region = "Italy"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Italy$计[c]/Italy$絋禘计[c]
}
Italy <- cbind(Italy, 瞯)

ES = covid[covid$瓣產 == "ES/Spain", ]
Spain = ES[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Spain$ID = c(12:1)
Spain$region = "Spain"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Spain$计[c]/Spain$絋禘计[c]
}
Spain <- cbind(Spain, 瞯)

PL = covid[covid$瓣產 == "PL/Poland", ]
Poland = PL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Poland$ID = c(12:1)
Poland$region = "Poland"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Poland$计[c]/Poland$絋禘计[c]
}
Poland <- cbind(Poland, 瞯)

UA = covid[covid$瓣產 == "UA/Ukraine", ]
Ukraine = UA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Ukraine$ID = c(12:1)
Ukraine$region = "Ukraine"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Ukraine$计[c]/Ukraine$絋禘计[c]
}
Ukraine <- cbind(Ukraine, 瞯)

SE = covid[covid$瓣產 == "SE/Sweden", ]
Sweden = SE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Sweden$ID = c(12:1)
Sweden$region = "Sweden"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Sweden$计[c]/Sweden$絋禘计[c]
}
Sweden <- cbind(Sweden, 瞯)

NL = covid[covid$瓣產 == "NL/Netherlands", ]
Netherlands = NL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Netherlands$ID = c(12:1)
Netherlands$region = "Netherlands"
瞯 = c(1:12)
for (c in 1:12) {
  瞯[c] = Netherlands$计[c]/Netherlands$絋禘计[c]
}
Netherlands <- cbind(Netherlands, 瞯)

#盢珼匡瓣產戈癬酚るだ秨
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

#更ず瓜郎
world_map <- map_data("world")

#盢–る戈だ籔瓜郎merge瞯膀娄礶Θ瓜
map.plot1 <- merge(world_map, countrys1, by="region", all.x=T)
map.plot1 <- map.plot1[order(map.plot1$order), ]

ggplot(map.plot1, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot2 <- merge(world_map, countrys2, by="region", all.x=T)
map.plot2 <- map.plot2[order(map.plot2$order), ]

ggplot(map.plot2, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot3 <- merge(world_map, countrys3, by="region", all.x=T)
map.plot3 <- map.plot3[order(map.plot3$order), ]

ggplot(map.plot3, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot4 <- merge(world_map, countrys4, by="region", all.x=T)
map.plot4 <- map.plot4[order(map.plot4$order), ]

ggplot(map.plot4, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot5 <- merge(world_map, countrys5, by="region", all.x=T)
map.plot5 <- map.plot5[order(map.plot5$order), ]

ggplot(map.plot5, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot6 <- merge(world_map, countrys6, by="region", all.x=T)
map.plot6 <- map.plot6[order(map.plot6$order), ]

ggplot(map.plot6, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot7 <- merge(world_map, countrys7, by="region", all.x=T)
map.plot7 <- map.plot7[order(map.plot7$order), ]

ggplot(map.plot7, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot8 <- merge(world_map, countrys8, by="region", all.x=T)
map.plot8 <- map.plot8[order(map.plot8$order), ]

ggplot(map.plot8, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot9 <- merge(world_map, countrys9, by="region", all.x=T)
map.plot9 <- map.plot9[order(map.plot9$order), ]

ggplot(map.plot9, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot10 <- merge(world_map, countrys10, by="region", all.x=T)
map.plot10 <- map.plot10[order(map.plot10$order), ]

ggplot(map.plot10, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot11 <- merge(world_map, countrys11, by="region", all.x=T)
map.plot11 <- map.plot11[order(map.plot11$order), ]

ggplot(map.plot11, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot12 <- merge(world_map, countrys12, by="region", all.x=T)
map.plot12 <- map.plot12[order(map.plot12$order), ]

ggplot(map.plot12, aes(x = long, y = lat, group = group, fill = 瞯)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()
