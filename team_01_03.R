#衡瓣瞯
TW_dr = TW$计[1]/TW$絋禘计[1]
KR_dr = KR$计[1]/KR$絋禘计[1]
JP_dr = JP$计[1]/JP$絋禘计[1]
CN_dr = CN$计[1]/CN$絋禘计[1]
IN_dr = IN$计[1]/IN$絋禘计[1]
AU_dr = AU$计[1]/AU$絋禘计[1]
NZ_dr = NZ$计[1]/NZ$絋禘计[1]
ID_dr = ID$计[1]/ID$絋禘计[1]
SG_dr = SG$计[1]/SG$絋禘计[1]
RU_dr = RU$计[1]/RU$絋禘计[1]
US_dr = US$计[1]/US$絋禘计[1]
CA_dr = CA$计[1]/CA$絋禘计[1]
BR_dr = BR$计[1]/BR$絋禘计[1]
MX_dr = MX$计[1]/MX$絋禘计[1]
PE_dr = PE$计[1]/PE$絋禘计[1]
AR_dr = AR$计[1]/AR$絋禘计[1]
CO_dr = CO$计[1]/CO$絋禘计[1]
EG_dr = EG$计[1]/EG$絋禘计[1]
ZA_dr = ZA$计[1]/ZA$絋禘计[1]
TR_dr = TR$计[1]/TR$絋禘计[1]
IR_dr = IR$计[1]/IR$絋禘计[1]
GB_dr = GB$计[1]/GB$絋禘计[1]
FR_dr = FR$计[1]/FR$絋禘计[1]
DE_dr = DE$计[1]/DE$絋禘计[1]
IT_dr = IT$计[1]/IT$絋禘计[1]
ES_dr = ES$计[1]/ES$絋禘计[1]
PL_dr = PL$计[1]/PL$絋禘计[1]
UA_dr = UA$计[1]/UA$絋禘计[1]
SE_dr = SE$计[1]/SE$絋禘计[1]
NL_dr = NL$计[1]/NL$絋禘计[1]

#ъ瓣材掸戈
country00 <- rbind(TW[1,c(2,4,5)], KR[1,c(2,4,5)], JP[1,c(2,4,5)], CN[1,c(2,4,5)], IN[1,c(2,4,5)],
                   AU[1,c(2,4,5)], NZ[1,c(2,4,5)], ID[1,c(2,4,5)], SG[1,c(2,4,5)], RU[1,c(2,4,5)],
                   US[1,c(2,4,5)], CA[1,c(2,4,5)], BR[1,c(2,4,5)], MX[1,c(2,4,5)], PE[1,c(2,4,5)], 
                   AR[1,c(2,4,5)], CO[1,c(2,4,5)], EG[1,c(2,4,5)], ZA[1,c(2,4,5)], TR[1,c(2,4,5)], 
                   IR[1,c(2,4,5)], GB[1,c(2,4,5)], FR[1,c(2,4,5)], DE[1,c(2,4,5)], IT[1,c(2,4,5)], 
                   ES[1,c(2,4,5)], PL[1,c(2,4,5)], UA[1,c(2,4,5)], SE[1,c(2,4,5)], NL[1,c(2,4,5)])

#盢瞯秈计沮い
瞯 = c(TW_dr, KR_dr, JP_dr, CN_dr, IN_dr, AU_dr, NZ_dr, ID_dr, SG_dr, RU_dr, 
        US_dr, CA_dr, BR_dr, MX_dr, PE_dr, AR_dr, CO_dr, EG_dr, ZA_dr, TR_dr, 
        IR_dr, GB_dr, FR_dr, DE_dr, IT_dr, ES_dr, PL_dr, UA_dr, SE_dr, NL_dr)
country00 <- cbind(country00, 瞯)

#瓜
ggplot ( data = country00, aes( x = 瓣產, y = 瞯 ) ) + geom_bar ( stat = "identity" ) + theme_bw()