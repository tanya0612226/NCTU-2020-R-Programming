#��X�C30�ꪺ���
TW = covid[covid$��a == "TW/Taiwan", ]
TW$ID = c(340:1)
TW$��a = "TW"

KR = covid[covid$��a == "KR/Korea, Republic of", ]
KR$ID = c(340:1)
KR$��a = "KR"

JP = covid[covid$��a == "JP/Japan", ]
JP$ID = c(340:1)
JP$��a = "JP"

CN = covid[covid$��a == "CN/China", ]
CN$ID = c(340:1)
CN$��a = "CN"

IN = covid[covid$��a == "IN/India", ]
IN$ID = c(340:1)
IN$��a = "IN"

AU = covid[covid$��a == "AU/Australia", ]
AU$ID = c(340:1)
AU$��a = "AU"

NZ = covid[covid$��a == "NZ/New Zealand", ]
NZ$ID = c(340:1)
NZ$��a = "NZ"

ID = covid[covid$��a == "ID/Indonesia", ]
ID$ID = c(340:1)
ID$��a = "ID"

SG = covid[covid$��a == "SG/Singapore", ]
SG$ID = c(340:1)
SG$��a = "SG"

RU = covid[covid$��a == "RU/Russian Federation", ]
RU$ID = c(340:1)
RU$��a = "RU"

US = covid[covid$��a == "US/United States", ]
US$ID = c(340:1)
US$��a = "US"

CA = covid[covid$��a == "CA/Canada", ]
CA$ID = c(340:1)
CA$��a = "CA"

BR = covid[covid$��a == "BR/Brazil", ]
BR$ID = c(340:1)
BR$��a = "BR"

MX = covid[covid$��a == "MX/Mexico", ]
MX$ID = c(340:1)
MX$��a = "MX"

PE = covid[covid$��a == "PE/Peru", ]
PE$ID = c(340:1)
PE$��a = "PE"

AR = covid[covid$��a == "AR/Argentina", ]
AR$ID = c(340:1)
AR$��a = "AR"

CO = covid[covid$��a == "CO/Colombia", ]
CO$ID = c(340:1)
CO$��a = "CO"

EG = covid[covid$��a == "EG/Egypt", ]
EG$ID = c(340:1)
EG$��a = "EG"

ZA = covid[covid$��a == "ZA/South Africa", ]
ZA$ID = c(340:1)
ZA$��a = "ZA"

TR = covid[covid$��a == "TR/Turkey", ]
TR$ID = c(340:1)
TR$��a = "TR"

IR = covid[covid$��a == "IR/Iran, Islamic Republic of", ]
IR$ID = c(340:1)
IR$��a = "IR"

GB = covid[covid$��a == "GB/United Kingdom", ]
GB$ID = c(340:1)
GB$��a = "GB"

FR = covid[covid$��a == "FR/France", ]
FR$ID = c(340:1)
FR$��a = "FR"

DE = covid[covid$��a == "DE/Germany", ]
DE$ID = c(340:1)
DE$��a = "DE"

IT = covid[covid$��a == "IT/Italy", ]
IT$ID = c(340:1)
IT$��a = "IT"

ES = covid[covid$��a == "ES/Spain", ]
ES$ID = c(340:1)
ES$��a = "ES"

PL = covid[covid$��a == "PL/Poland", ]
PL$ID = c(340:1)
PL$��a = "PL"

UA = covid[covid$��a == "UA/Ukraine", ]
UA$ID = c(340:1)
UA$��a = "UA"

SE = covid[covid$��a == "SE/Sweden", ]
SE$ID = c(340:1)
SE$��a = "SE"

NL = covid[covid$��a == "NL/Netherlands", ]
NL$ID = c(340:1)
NL$��a = "NL"

#�@��
country <- rbind(TW, KR, JP, CN, IN, AU, NZ, ID, SG, RU, US, CA, BR, MX, PE, AR, CO, EG, ZA, TR, IR, GB, FR, DE, IT, ES, PL, UA, SE, NL)
ggplot(country, aes(x = ID, y = �T�E��, color=��a)) +geom_line()+
  labs(title="���y��a�T�E�Ʀ��u", x ="�Ѽ�", y = "�T�E��")+theme_bw()

country0 <- rbind(US, BR, IN)
ggplot(country0, aes(x = ID, y = �T�E��, color=��a)) +geom_line()+
  labs(title="�e�T�W��a�T�E�Ʀ��u", x ="�Ѽ�", y = "�T�E��")+theme_bw()

country1 <- rbind(TW, KR, JP, CN, ID, SG, RU, TR, IR)
ggplot(country1, aes(x = ID, y = �T�E��, color=��a)) +geom_line()+
  labs(title="�Ȭw��a�T�E�Ʀ��u", x ="�Ѽ�", y = "�T�E��")+theme_bw()

country2 <- rbind(CA, MX, GB, FR, DE, IT, ES, PL, UA, SE, NL)
ggplot(country2, aes(x = ID, y = �T�E��, color=��a)) +geom_line()+
  labs(title="�ڬ���a�T�E�Ʀ��u", x ="�Ѽ�", y = "�T�E��")+theme_bw()

country3 <- rbind(AU, NZ, ZA, MX, PE, AR, CO)
ggplot(country3, aes(x = ID, y = �T�E��, color=��a)) +geom_line()+
  labs(title="�n�b�y��a�T�E�Ʀ��u", x ="�Ѽ�", y = "�T�E��")+theme_bw()