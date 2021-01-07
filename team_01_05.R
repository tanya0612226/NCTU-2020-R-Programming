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

#讀取covid2.csv檔
covid = read.csv("C:/Users/Jimmy/Desktop/R/期末報告/新增資料夾 (3)/covid2.csv", header=TRUE, encoding='big5')

#將covid2.csv中各個國家的資料挑出，並把每個月的資料相加以求出單月資料
#再求出該國家的單月確診數
TW = covid[covid$國家 == "TW/Taiwan", ]
Taiwan = TW[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Taiwan$ID = c(12:1)
Taiwan$region = "Taiwan"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Taiwan$確診數[c]
  }
  else{
    單月確診量[c] = Taiwan$確診數[c] - Taiwan$確診數[c+1]
  }
}
Taiwan <- cbind(Taiwan, 單月確診量)

KR = covid[covid$國家 == "KR/Korea, Republic of", ]
SouthKorea = KR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthKorea$ID = c(12:1)
SouthKorea$region = "SouthKorea"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = SouthKorea$確診數[c]
  }
  else{
    單月確診量[c] = SouthKorea$確診數[c] - SouthKorea$確診數[c+1]
  }
}
SouthKorea <- cbind(SouthKorea, 單月確診量)

JP = covid[covid$國家 == "JP/Japan", ]
Japan = JP[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Japan$ID = c(12:1)
Japan$region = "Japan"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Japan$確診數[c]
  }
  else{
    單月確診量[c] = Japan$確診數[c] - Japan$確診數[c+1]
  }
}
Japan <- cbind(Japan, 單月確診量)

CN = covid[covid$國家 == "CN/China", ]
China = CN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
China$ID = c(12:1)
China$region = "China"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = China$確診數[c]
  }
  else{
    單月確診量[c] = China$確診數[c] - China$確診數[c+1]
  }
}
China <- cbind(China, 單月確診量)

IN = covid[covid$國家 == "IN/India", ]
India = IN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
India$ID = c(12:1)
India$region = "India"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = India$確診數[c]
  }
  else{
    單月確診量[c] = India$確診數[c] - India$確診數[c+1]
  }
}
India <- cbind(India, 單月確診量)

AU = covid[covid$國家 == "AU/Australia", ]
Australia = AU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Australia$ID = c(12:1)
Australia$region = "Australia"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Australia$確診數[c]
  }
  else{
    單月確診量[c] = Australia$確診數[c] - Australia$確診數[c+1]
  }
}
Australia <- cbind(Australia, 單月確診量)

NZ = covid[covid$國家 == "NZ/New Zealand", ]
NewZealand = NZ[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
NewZealand$ID = c(12:1)
NewZealand$region = "New Zealand"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = NewZealand$確診數[c]
  }
  else{
    單月確診量[c] = NewZealand$確診數[c] - NewZealand$確診數[c+1]
  }
}
NewZealand <- cbind(NewZealand, 單月確診量)

ID = covid[covid$國家 == "ID/Indonesia", ]
Indonesia = ID[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Indonesia$ID = c(12:1)
Indonesia$region = "Indonesia"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Indonesia$確診數[c]
  }
  else{
    單月確診量[c] = Indonesia$確診數[c] - Indonesia$確診數[c+1]
  }
}
Indonesia <- cbind(Indonesia, 單月確診量)

SG = covid[covid$國家 == "SG/Singapore", ]
Singapore = SG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Singapore$ID = c(12:1)
Singapore$region = "Singapore"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Singapore$確診數[c]
  }
  else{
    單月確診量[c] = Singapore$確診數[c] - Singapore$確診數[c+1]
  }
}
Singapore <- cbind(Singapore, 單月確診量)

RU = covid[covid$國家 == "RU/Russian Federation", ]
Russia = RU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Russia$ID = c(12:1)
Russia$region = "Russia"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Russia$確診數[c]
  }
  else{
    單月確診量[c] = Russia$確診數[c] - Russia$確診數[c+1]
  }
}
Russia <- cbind(Russia, 單月確診量)

US = covid[covid$國家 == "US/United States", ]
USA = US[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
USA$ID = c(12:1)
USA$region = "USA"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = USA$確診數[c]
  }
  else{
    單月確診量[c] = USA$確診數[c] - USA$確診數[c+1]
  }
}
USA <- cbind(USA, 單月確診量)

CA = covid[covid$國家 == "CA/Canada", ]
Canada = CA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Canada$ID = c(12:1)
Canada$region = "Canada"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Canada$確診數[c]
  }
  else{
    單月確診量[c] = Canada$確診數[c] - Canada$確診數[c+1]
  }
}
Canada <- cbind(Canada, 單月確診量)


BR = covid[covid$國家 == "BR/Brazil", ]
Brazil = BR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Brazil$ID = c(12:1)
Brazil$region = "Brazil"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Brazil$確診數[c]
  }
  else{
    單月確診量[c] = Brazil$確診數[c] - Brazil$確診數[c+1]
  }
}
Brazil <- cbind(Brazil, 單月確診量)

MX = covid[covid$國家 == "MX/Mexico", ]
Mexico = MX[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Mexico$ID = c(12:1)
Mexico$region = "Mexico"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Mexico$確診數[c]
  }
  else{
    單月確診量[c] = Mexico$確診數[c] - Mexico$確診數[c+1]
  }
}
Mexico <- cbind(Mexico, 單月確診量)

PE = covid[covid$國家 == "PE/Peru", ]
Peru = PE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Peru$ID = c(12:1)
Peru$region = "Peru"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Peru$確診數[c]
  }
  else{
    單月確診量[c] = Peru$確診數[c] - Peru$確診數[c+1]
  }
}
Peru <- cbind(Peru, 單月確診量)

AR = covid[covid$國家 == "AR/Argentina", ]
Argentina = AR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Argentina$ID = c(12:1)
Argentina$region = "Argentina"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Argentina$確診數[c]
  }
  else{
    單月確診量[c] = Argentina$確診數[c] - Argentina$確診數[c+1]
  }
}
Argentina <- cbind(Argentina, 單月確診量)

CO = covid[covid$國家 == "CO/Colombia", ]
Colombia = CO[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Colombia$ID = c(12:1)
Colombia$region = "Colombia"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Colombia$確診數[c]
  }
  else{
    單月確診量[c] = Colombia$確診數[c] - Colombia$確診數[c+1]
  }
}
Colombia <- cbind(Colombia, 單月確診量)

EG = covid[covid$國家 == "EG/Egypt", ]
Egypt = EG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Egypt$ID = c(12:1)
Egypt$region = "Egypt"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Egypt$確診數[c]
  }
  else{
    單月確診量[c] = Egypt$確診數[c] - Egypt$確診數[c+1]
  }
}
Egypt <- cbind(Egypt, 單月確診量)

ZA = covid[covid$國家 == "ZA/South Africa", ]
SouthAfrica = ZA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthAfrica$ID = c(12:1)
SouthAfrica$region = "South Africa"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = SouthAfrica$確診數[c]
  }
  else{
    單月確診量[c] = SouthAfrica$確診數[c] - SouthAfrica$確診數[c+1]
  }
}
SouthAfrica <- cbind(SouthAfrica, 單月確診量)

TR = covid[covid$國家 == "TR/Turkey", ]
Turkey = TR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Turkey$ID = c(12:1)
Turkey$region = "Turkey"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Turkey$確診數[c]
  }
  else{
    單月確診量[c] = Turkey$確診數[c] - Turkey$確診數[c+1]
  }
}
Turkey <- cbind(Turkey, 單月確診量)

IR = covid[covid$國家 == "IR/Iran, Islamic Republic of", ]
Iran = IR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Iran$ID = c(12:1)
Iran$region = "Iran"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Iran$確診數[c]
  }
  else{
    單月確診量[c] = Iran$確診數[c] - Iran$確診數[c+1]
  }
}
Iran <- cbind(Iran, 單月確診量)

GB = covid[covid$國家 == "GB/United Kingdom", ]
UK = GB[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
UK$ID = c(12:1)
UK$region = "UK"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = UK$確診數[c]
  }
  else{
    單月確診量[c] = UK$確診數[c] - UK$確診數[c+1]
  }
}
UK <- cbind(UK, 單月確診量)

FR = covid[covid$國家 == "FR/France", ]
France = FR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
France$ID = c(12:1)
France$region = "France"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = France$確診數[c]
  }
  else{
    單月確診量[c] = France$確診數[c] - France$確診數[c+1]
  }
}
France <- cbind(France, 單月確診量)

DE = covid[covid$國家 == "DE/Germany", ]
Germany = DE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Germany$ID = c(12:1)
Germany$region = "Germany"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Germany$確診數[c]
  }
  else{
    單月確診量[c] = Germany$確診數[c] - Germany$確診數[c+1]
  }
}
Germany <- cbind(Germany, 單月確診量)

IT = covid[covid$國家 == "IT/Italy", ]
Italy = IT[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Italy$ID = c(12:1)
Italy$region = "Italy"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Italy$確診數[c]
  }
  else{
    單月確診量[c] = Italy$確診數[c] - Italy$確診數[c+1]
  }
}
Italy <- cbind(Italy, 單月確診量)

ES = covid[covid$國家 == "ES/Spain", ]
Spain = ES[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Spain$ID = c(12:1)
Spain$region = "Spain"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Spain$確診數[c]
  }
  else{
    單月確診量[c] = Spain$確診數[c] - Spain$確診數[c+1]
  }
}
Spain <- cbind(Spain, 單月確診量)

PL = covid[covid$國家 == "PL/Poland", ]
Poland = PL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Poland$ID = c(12:1)
Poland$region = "Poland"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Poland$確診數[c]
  }
  else{
    單月確診量[c] = Poland$確診數[c] - Poland$確診數[c+1]
  }
}
Poland <- cbind(Poland, 單月確診量)

UA = covid[covid$國家 == "UA/Ukraine", ]
Ukraine = UA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Ukraine$ID = c(12:1)
Ukraine$region = "Ukraine"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Ukraine$確診數[c]
  }
  else{
    單月確診量[c] = Ukraine$確診數[c] - Ukraine$確診數[c+1]
  }
}
Ukraine <- cbind(Ukraine, 單月確診量)

SE = covid[covid$國家 == "SE/Sweden", ]
Sweden = SE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Sweden$ID = c(12:1)
Sweden$region = "Sweden"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Sweden$確診數[c]
  }
  else{
    單月確診量[c] = Sweden$確診數[c] - Sweden$確診數[c+1]
  }
}
Sweden <- cbind(Sweden, 單月確診量)

NL = covid[covid$國家 == "NL/Netherlands", ]
Netherlands = NL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Netherlands$ID = c(12:1)
Netherlands$region = "Netherlands"
單月確診量 = c(1:12)
for (c in 1:12) {
  if(c == 12){
    單月確診量[c] = Netherlands$確診數[c]
  }
  else{
    單月確診量[c] = Netherlands$確診數[c] - Netherlands$確診數[c+1]
  }
}
Netherlands <- cbind(Netherlands, 單月確診量)

#將挑選國家的資料合在一起，再按照月份分開
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

#載入內建地圖檔
world_map <- map_data("world")

#將每月資料分別與地圖檔merge，再以單月確診量為基礎畫成世界地圖
map.plot1 <- merge(world_map, countrys1, by="region", all.x=T)
map.plot1 <- map.plot1[order(map.plot1$order), ]

ggplot(map.plot1, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot2 <- merge(world_map, countrys2, by="region", all.x=T)
map.plot2 <- map.plot2[order(map.plot2$order), ]

ggplot(map.plot2, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot3 <- merge(world_map, countrys3, by="region", all.x=T)
map.plot3 <- map.plot3[order(map.plot3$order), ]

ggplot(map.plot3, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot4 <- merge(world_map, countrys4, by="region", all.x=T)
map.plot4 <- map.plot4[order(map.plot4$order), ]

ggplot(map.plot4, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot5 <- merge(world_map, countrys5, by="region", all.x=T)
map.plot5 <- map.plot5[order(map.plot5$order), ]

ggplot(map.plot5, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot6 <- merge(world_map, countrys6, by="region", all.x=T)
map.plot6 <- map.plot6[order(map.plot6$order), ]

ggplot(map.plot6, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot7 <- merge(world_map, countrys7, by="region", all.x=T)
map.plot7 <- map.plot7[order(map.plot7$order), ]

ggplot(map.plot7, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot8 <- merge(world_map, countrys8, by="region", all.x=T)
map.plot8 <- map.plot8[order(map.plot8$order), ]

ggplot(map.plot8, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot9 <- merge(world_map, countrys9, by="region", all.x=T)
map.plot9 <- map.plot9[order(map.plot9$order), ]

ggplot(map.plot9, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot10 <- merge(world_map, countrys10, by="region", all.x=T)
map.plot10 <- map.plot10[order(map.plot10$order), ]

ggplot(map.plot10, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot11 <- merge(world_map, countrys11, by="region", all.x=T)
map.plot11 <- map.plot11[order(map.plot11$order), ]

ggplot(map.plot11, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot12 <- merge(world_map, countrys12, by="region", all.x=T)
map.plot12 <- map.plot12[order(map.plot12$order), ]

ggplot(map.plot12, aes(x = long, y = lat, group = group, fill = 單月確診量)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()
