# NCTU-2020-R-Programming

### 組員:

0612217 房　錚

0612218 陳俊佑

0612226 林珈卉 數據分析

### 數據介紹:

我們分析的是2020全球疫情的數據，此數據的紀錄時間為2020/1/28~2020/12/31，共計209國的疫情數據，有71140筆數據資料

數據中包含的內容有：國家、時間、確診數、死亡數、隔離中人數...等等

我們便針對這些數據，分析世界以及各國在2020年的疫情走勢

### 數據分析:

1. 讀取數據資料

          covid = read.csv("C://Users/Tanya/Desktop/covid1.csv", header=TRUE, encoding='big5')
          
2. 首先分析全世界的資料，因此從數據庫中挑出全世界的340筆數據

          world = covid[covid$國家 == "Total/Global", ]
          
   挑選完這些數據後，利用for迴圈算出死亡率以及單日確診數，並將得出的數據放入全世界的數據中
   
          for (c in 1:340) {
            死亡率[c] = world$死亡數[c]/world$確診數[c]
          }

          for (c in 1:340) {
            if(c == 340){
              單日確診量[c] = world$確診數[c]
            }
            else{
              單日確診量[c] = world$確診數[c] - world$確診數[c+1]
            }
          }
          world <- cbind(world, 死亡率, 單日確診量)
          
   畫出全世界確診數、死亡數以及死亡率的曲線圖
   
             library(ggplot2)
          ggplot(world, aes(x = ID, y = 確診數)) +geom_line()+
               labs(title="全球總確診數曲線", x ="天數", y = "確診數")+theme_bw()

          ggplot(world, aes(x = ID, y = 死亡數)) +geom_line()+
            labs(title="全球總死亡數曲線", x ="天數", y = "死亡數")+theme_bw()

          ggplot(world, aes(x = ID, y = 死亡率)) +geom_line()+
            labs(title="全球總死亡率曲線", x ="天數", y = "死亡率")+theme_bw()
           
   再來挑選出全世界去年1到12月的總數據進行分析，並跟上述一樣用for迴圈先得出單月確診量後，畫出折線圖
  
            ggplot(data=world0) + 
               geom_point(aes(x=ID, y=單月確診量, col=2), stat = "identity") + 
               geom_line(aes(x=ID, y=單月確診量, col=2), stat = "identity") +
               labs(title="全球單月確診量", x ="月份", y = "確診數") + theme_bw() 
               
   畫出的圖如下
   ![Image](https://images.plurk.com/21pvWPH8wxvr17i33l19yw.png)
   ![Image](https://images.plurk.com/2RLiB3YQlrwUUsXvSnjeO.png)
   ![Image](https://images.plurk.com/3yOInGz4vwEVAaAhZend9w.png)
   ![Image](https://images.plurk.com/3knO0aVUTNfbs87mnNkmKb.png)

3.接著分析各國資料，首先從數據中選取30國的數據。EX:

          TW = covid[covid$國家 == "TW/Taiwan", ]
          KR = covid[covid$國家 == "KR/Korea, Republic of", ]
          JP = covid[covid$國家 == "JP/Japan", ]
          
 將30國的資料整合後，畫出各個國家的確診曲線圖
 
           country <- rbind(TW, KR, JP, CN, IN, AU, NZ, ID, SG, RU, US, CA, BR, MX, PE, AR, CO, EG, ZA, TR, IR, GB, FR, DE, IT, ES, PL, UA, SE, NL)
          ggplot(country, aes(x = ID, y = 確診數, color=國家)) +geom_line()+
            labs(title="全球國家確診數曲線", x ="天數", y = "確診數")+theme_bw(
            
     畫出的圖如下
   ![Image](https://images.plurk.com/5IydwoUauUXfT3MwEQN2eK.png)
   
 接著將國家分為四類:前三名、亞洲、歐美、南半球國家，再分別畫出確診曲線圖
 
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
            
    畫出的圖如下
   ![Image](https://images.plurk.com/5O9zMmRGg6aqwIM6HQQD7V.png)
   ![Image](https://images.plurk.com/6mPj6TgoHTmAwTlkSqGuKC.png)
   ![Image](https://images.plurk.com/6zY0e35BsznCfKH4G3IEp2.png)
   ![Image](https://images.plurk.com/exTPdGCjZsyNKEcMSudVs.png) 

抓出各國的第一筆資料(12/31)，計算出各國的死亡率

          #死亡率=死亡數/確診數
          TW_dr = TW$死亡數[1]/TW$確診數[1]
          KR_dr = KR$死亡數[1]/KR$確診數[1]
          JP_dr = JP$死亡數[1]/JP$確診數[1]

計算完畢後，將死亡率的數據放入各國的數據中，並畫出長條圖做比較

          country00 <- cbind(country00, 死亡率)
          ggplot ( data = country00, aes( x = 國家, y = 死亡率 ) ) + geom_bar ( stat = "identity" ) + theme_bw()
          
畫出的圖如下
   ![Image](https://images.plurk.com/253NqcytfdSEdeU5W24WhI.png)
