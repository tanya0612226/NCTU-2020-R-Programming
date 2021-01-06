#抓出每30國的資料
TW = covid[covid$國家 == "TW/Taiwan", ]
TW$ID = c(340:1)
TW$國家 = "TW"

KR = covid[covid$國家 == "KR/Korea, Republic of", ]
KR$ID = c(340:1)
KR$國家 = "KR"

JP = covid[covid$國家 == "JP/Japan", ]
JP$ID = c(340:1)
JP$國家 = "JP"

CN = covid[covid$國家 == "CN/China", ]
CN$ID = c(340:1)
CN$國家 = "CN"

IN = covid[covid$國家 == "IN/India", ]
IN$ID = c(340:1)
IN$國家 = "IN"

AU = covid[covid$國家 == "AU/Australia", ]
AU$ID = c(340:1)
AU$國家 = "AU"

NZ = covid[covid$國家 == "NZ/New Zealand", ]
NZ$ID = c(340:1)
NZ$國家 = "NZ"

ID = covid[covid$國家 == "ID/Indonesia", ]
ID$ID = c(340:1)
ID$國家 = "ID"

SG = covid[covid$國家 == "SG/Singapore", ]
SG$ID = c(340:1)
SG$國家 = "SG"

RU = covid[covid$國家 == "RU/Russian Federation", ]
RU$ID = c(340:1)
RU$國家 = "RU"

US = covid[covid$國家 == "US/United States", ]
US$ID = c(340:1)
US$國家 = "US"

CA = covid[covid$國家 == "CA/Canada", ]
CA$ID = c(340:1)
CA$國家 = "CA"

BR = covid[covid$國家 == "BR/Brazil", ]
BR$ID = c(340:1)
BR$國家 = "BR"

MX = covid[covid$國家 == "MX/Mexico", ]
MX$ID = c(340:1)
MX$國家 = "MX"

PE = covid[covid$國家 == "PE/Peru", ]
PE$ID = c(340:1)
PE$國家 = "PE"

AR = covid[covid$國家 == "AR/Argentina", ]
AR$ID = c(340:1)
AR$國家 = "AR"

CO = covid[covid$國家 == "CO/Colombia", ]
CO$ID = c(340:1)
CO$國家 = "CO"

EG = covid[covid$國家 == "EG/Egypt", ]
EG$ID = c(340:1)
EG$國家 = "EG"

ZA = covid[covid$國家 == "ZA/South Africa", ]
ZA$ID = c(340:1)
ZA$國家 = "ZA"

TR = covid[covid$國家 == "TR/Turkey", ]
TR$ID = c(340:1)
TR$國家 = "TR"

IR = covid[covid$國家 == "IR/Iran, Islamic Republic of", ]
IR$ID = c(340:1)
IR$國家 = "IR"

GB = covid[covid$國家 == "GB/United Kingdom", ]
GB$ID = c(340:1)
GB$國家 = "GB"

FR = covid[covid$國家 == "FR/France", ]
FR$ID = c(340:1)
FR$國家 = "FR"

DE = covid[covid$國家 == "DE/Germany", ]
DE$ID = c(340:1)
DE$國家 = "DE"

IT = covid[covid$國家 == "IT/Italy", ]
IT$ID = c(340:1)
IT$國家 = "IT"

ES = covid[covid$國家 == "ES/Spain", ]
ES$ID = c(340:1)
ES$國家 = "ES"

PL = covid[covid$國家 == "PL/Poland", ]
PL$ID = c(340:1)
PL$國家 = "PL"

UA = covid[covid$國家 == "UA/Ukraine", ]
UA$ID = c(340:1)
UA$國家 = "UA"

SE = covid[covid$國家 == "SE/Sweden", ]
SE$ID = c(340:1)
SE$國家 = "SE"

NL = covid[covid$國家 == "NL/Netherlands", ]
NL$ID = c(340:1)
NL$國家 = "NL"

#作圖
country <- rbind(TW, KR, JP, CN, IN, AU, NZ, ID, SG, RU, US, CA, BR, MX, PE, AR, CO, EG, ZA, TR, IR, GB, FR, DE, IT, ES, PL, UA, SE, NL)
ggplot(country, aes(x = ID, y = 確診數, color=國家)) +geom_line()+
  labs(title="全球國家確診數曲線", x ="天數", y = "確診數")+theme_bw()

country0 <- rbind(US, BR, IN)
ggplot(country0, aes(x = ID, y = 確診數, color=國家)) +geom_line()+
  labs(title="前三名國家確診數曲線", x ="天數", y = "確診數")+theme_bw()

country1 <- rbind(TW, KR, JP, CN, ID, SG, RU, TR, IR)
ggplot(country1, aes(x = ID, y = 確診數, color=國家)) +geom_line()+
  labs(title="亞洲國家確診數曲線", x ="天數", y = "確診數")+theme_bw()

country2 <- rbind(CA, MX, GB, FR, DE, IT, ES, PL, UA, SE, NL)
ggplot(country2, aes(x = ID, y = 確診數, color=國家)) +geom_line()+
  labs(title="歐美國家確診數曲線", x ="天數", y = "確診數")+theme_bw()

country3 <- rbind(AU, NZ, ZA, MX, PE, AR, CO)
ggplot(country3, aes(x = ID, y = 確診數, color=國家)) +geom_line()+
  labs(title="南半球國家確診數曲線", x ="天數", y = "確診數")+theme_bw()
