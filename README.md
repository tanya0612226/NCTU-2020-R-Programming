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
   ![Image](https://images.plurk.com/12KpX2WYeXaZ3sbXL67yIv.png)
   ![Image](https://images.plurk.com/2RLiB3YQlrwUUsXvSnjeO.png)
   ![Image](https://images.plurk.com/3yOInGz4vwEVAaAhZend9w.png)
   ![Image](https://images.plurk.com/3knO0aVUTNfbs87mnNkmKb.png)
