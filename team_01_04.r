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

TW = covid[covid$��a == "TW/Taiwan", ]
Taiwan = TW[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Taiwan$ID = c(12:1)
Taiwan$region = "Taiwan"

KR = covid[covid$��a == "KR/Korea, Republic of", ]
SouthKorea = KR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthKorea$ID = c(12:1)
SouthKorea$region = "SouthKorea"

JP = covid[covid$��a == "JP/Japan", ]
Japan = JP[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Japan$ID = c(12:1)
Japan$region = "Japan"

CN = covid[covid$��a == "CN/China", ]
China = CN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
China$ID = c(12:1)
China$region = "China"

IN = covid[covid$��a == "IN/India", ]
India = IN[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
India$ID = c(12:1)
India$region = "India"

AU = covid[covid$��a == "AU/Australia", ]
Australia = AU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Australia$ID = c(12:1)
Australia$region = "Australia"

NZ = covid[covid$��a == "NZ/New Zealand", ]
NewZealand = NZ[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
NewZealand$ID = c(12:1)
NewZealand$region = "New Zealand"

ID = covid[covid$��a == "ID/Indonesia", ]
Indonesia = ID[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Indonesia$ID = c(12:1)
Indonesia$region = "Indonesia"

SG = covid[covid$��a == "SG/Singapore", ]
Singapore = SG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Singapore$ID = c(12:1)
Singapore$region = "Singapore"

RU = covid[covid$��a == "RU/Russian Federation", ]
Russia = RU[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Russia$ID = c(12:1)
Russia$region = "Russia"

US = covid[covid$��a == "US/United States", ]
USA = US[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
USA$ID = c(12:1)
USA$region = "USA"

CA = covid[covid$��a == "CA/Canada", ]
Canada = CA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Canada$ID = c(12:1)
Canada$region = "Canada"


BR = covid[covid$��a == "BR/Brazil", ]
Brazil = BR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Brazil$ID = c(12:1)
Brazil$region = "Brazil"

MX = covid[covid$��a == "MX/Mexico", ]
Mexico = MX[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Mexico$ID = c(12:1)
Mexico$region = "Mexico"

PE = covid[covid$��a == "PE/Peru", ]
Peru = PE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Peru$ID = c(12:1)
Peru$region = "Peru"

AR = covid[covid$��a == "AR/Argentina", ]
Argentina = AR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Argentina$ID = c(12:1)
Argentina$region = "Argentina"

CO = covid[covid$��a == "CO/Colombia", ]
Colombia = CO[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Colombia$ID = c(12:1)
Colombia$region = "Colombia"

EG = covid[covid$��a == "EG/Egypt", ]
Egypt = EG[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Egypt$ID = c(12:1)
Egypt$region = "Egypt"

ZA = covid[covid$��a == "ZA/South Africa", ]
SouthAfrica = ZA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
SouthAfrica$ID = c(12:1)
SouthAfrica$region = "South Africa"

TR = covid[covid$��a == "TR/Turkey", ]
Turkey = TR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Turkey$ID = c(12:1)
Turkey$region = "Turkey"

IR = covid[covid$��a == "IR/Iran, Islamic Republic of", ]
Iran = IR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Iran$ID = c(12:1)
Iran$region = "Iran"

GB = covid[covid$��a == "GB/United Kingdom", ]
UK = GB[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
UK$ID = c(12:1)
UK$region = "UK"

FR = covid[covid$��a == "FR/France", ]
France = FR[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
France$ID = c(12:1)
France$region = "France"

DE = covid[covid$��a == "DE/Germany", ]
Germany = DE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Germany$ID = c(12:1)
Germany$region = "Germany"

IT = covid[covid$��a == "IT/Italy", ]
Italy = IT[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Italy$ID = c(12:1)
Italy$region = "Italy"

ES = covid[covid$��a == "ES/Spain", ]
Spain = ES[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Spain$ID = c(12:1)
Spain$region = "Spain"

PL = covid[covid$��a == "PL/Poland", ]
Poland = PL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Poland$ID = c(12:1)
Poland$region = "Poland"

UA = covid[covid$��a == "UA/Ukraine", ]
Ukraine = UA[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Ukraine$ID = c(12:1)
Ukraine$region = "Ukraine"

SE = covid[covid$��a == "SE/Sweden", ]
Sweden = SE[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Sweden$ID = c(12:1)
Sweden$region = "Sweden"

NL = covid[covid$��a == "NL/Netherlands", ]
Netherlands = NL[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
Netherlands$ID = c(12:1)
Netherlands$region = "Netherlands"

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

world_map <- map_data("world")

map.plot1 <- merge(world_map, countrys1, by="region", all.x=T)
map.plot1 <- map.plot1[order(map.plot1$order), ]

ggplot(map.plot1, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot2 <- merge(world_map, countrys2, by="region", all.x=T)
map.plot2 <- map.plot2[order(map.plot2$order), ]

ggplot(map.plot2, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot3 <- merge(world_map, countrys3, by="region", all.x=T)
map.plot3 <- map.plot3[order(map.plot3$order), ]

ggplot(map.plot3, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot4 <- merge(world_map, countrys4, by="region", all.x=T)
map.plot4 <- map.plot4[order(map.plot4$order), ]

ggplot(map.plot4, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot5 <- merge(world_map, countrys5, by="region", all.x=T)
map.plot5 <- map.plot5[order(map.plot5$order), ]

ggplot(map.plot5, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot6 <- merge(world_map, countrys6, by="region", all.x=T)
map.plot6 <- map.plot6[order(map.plot6$order), ]

ggplot(map.plot6, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot7 <- merge(world_map, countrys7, by="region", all.x=T)
map.plot7 <- map.plot7[order(map.plot7$order), ]

ggplot(map.plot7, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot8 <- merge(world_map, countrys8, by="region", all.x=T)
map.plot8 <- map.plot8[order(map.plot8$order), ]

ggplot(map.plot8, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot9 <- merge(world_map, countrys9, by="region", all.x=T)
map.plot9 <- map.plot9[order(map.plot9$order), ]

ggplot(map.plot9, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot10 <- merge(world_map, countrys10, by="region", all.x=T)
map.plot10 <- map.plot10[order(map.plot10$order), ]

ggplot(map.plot10, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot11 <- merge(world_map, countrys11, by="region", all.x=T)
map.plot11 <- map.plot11[order(map.plot11$order), ]

ggplot(map.plot11, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()

map.plot12 <- merge(world_map, countrys12, by="region", all.x=T)
map.plot12 <- map.plot12[order(map.plot12$order), ]

ggplot(map.plot12, aes(x = long, y = lat, group = group, fill = �T�E��)) + 
  geom_polygon()+ 
  scale_fill_gradient(low="black",high="red") + 
  coord_equal()
