# NCTU-2020-R-Programming

## 2020新冠肺炎全球疫情

### Team01 組員:

0612217 房　錚  線性模型、分析、預測

0612218 陳俊佑 數據分析20% 畫了一堆地圖

0612226 林珈卉 數據分析80% 弄了一堆圖

### 數據介紹:

我們分析的是2020全球疫情的數據，此數據的紀錄時間為2020/1/28~2020/12/31，共計209國的疫情數據，有71140筆數據資料

數據中包含的內容有：國家、時間、確診數、死亡數、隔離中人數...等等

我們便針對這些數據，分析世界以及各國在2020年的疫情走勢

### 數據分析:

#### 1. 讀取數據資料

          covid = read.csv("C://Users/Tanya/Desktop/covid1.csv", header=TRUE, encoding='big5')
          
#### 2. 世界資料分析

從數據庫中挑出全世界的340筆數據

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

#### 3.各國資料分析

從數據中選取30國的數據。EX:

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
   ![Image](https://images.plurk.com/FXvsHiNvVxmoNx4Qgx1wT.png)
   ![Image](https://images.plurk.com/7byFGoOtbel71NFs2e2UAt.png)
   ![Image](https://images.plurk.com/235V4iUrvc9dqT2aoE0FiF.png) 

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
   
#### 4.地圖繪製

以下以總確診數為例

首先將挑選的國家的資料挑出來(以台灣為例)，並每個月的資料相加以求出單月資料(可再進行其他運算)

          TW = covid[covid$國家 == "TW/Taiwan", ]
          Taiwan = TW[c(1,32,62,93,123,154,185,215,246,276,307,336), ]
          Taiwan$ID = c(12:1)
          Taiwan$region = "Taiwan"

將挑選國家的資料合在一起，再按照月份分開

                    contrys <- rbind(Taiwan, SouthKorea, Japan, China, India, Australia, NewZealand, Indonesia, Singapore, Russia, USA, Canada, Brazil, Mexico, Peru, Argentina, Colombia, Egypt, SouthAfrica, Turkey, Iran, UK, France, Germany, Italy, Spain, Poland, Ukraine, Sweden, Netherlands)
                    countrys1 = contrys[contrys$ID == "1", ]
                    countrys2 = contrys[contrys$ID == "2", ]
                    countrys3 = contrys[contrys$ID == "3", ]

載入Rstudio本身包含的世界地圖檔案

          world_map <- map_data("world")

將地圖檔和總確診數merge成同一個資料

          map.plot1 <- merge(world_map, countrys1, by="region", all.x=T)
          map.plot1 <- map.plot1[order(map.plot1$order), ]

畫出世界地圖並以總確診數填色

          ggplot(map.plot1, aes(x = long, y = lat, group = group, fill = 確診數)) + 
            geom_polygon()+ 
            scale_fill_gradient(low="black",high="red") + 
            coord_equal()

畫出的圖如下

   ![Image](https://images.plurk.com/6yNGjAMcLxagneqGGgUvZo.gif)
   ![Image](https://images.plurk.com/2wVvrJ36qrsQkWE5OWqNgN.gif)
   ![Image](https://images.plurk.com/2KzfNsTU63fHbrlUueDfoQ.gif)
   ![Image](https://images.plurk.com/u0JXl7eQFqNniABC3nTgE.gif) 

### 線性回歸:

將全球的疫情資料挑出並且用ID表示第幾天的疫情資料

          world = covid[covid$國家 == "Total/Global", ]
          world$ID = c(340:1)

訓練集取2020年的倒數100天到倒數21天，測試集取2020年的最後20天，並取2021年的1月為預測集

          train <- world[21:100,]
          test <- world[1:20,]
          esti <-world[1:31,]
          esti$ID = c(371:341)
          esti$檢核日期 = c(31:1)

建立確診數的模型並畫圖

          model = lm(確診數~ID, data=train)
          predict(model, test)
          predict(model, esti)
          plot(train$確診數~train$ID, col="blue")
          abline(model,col="red")
          plot(test$確診數~test$ID, col="blue")
          abline(model,col="red")

預測結果(1/31~1/1)

    ![Image](https://images.plurk.com/1BPm7vvMGDvJESlXXLlIep.png)
 
建立死亡數的模型並畫圖

          model2 = lm(死亡數~ID, data=train)
          predict(model2, test)
          predict(model2, esti)
          plot(train$死亡數~train$ID, col="blue")
          abline(model2,col="red")
          plot(test$死亡數~test$ID, col="blue")
          abline(model2,col="red")

預測結果(1/31~1/1)
 
    ![Image](https://images.plurk.com/5jolEM4vDHPbNOatfWwcvM.png)
