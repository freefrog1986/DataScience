library(leaflet)

# Create the dataset
# In this script, we care about the hourse price of china's capital city beijing and the surranding citys, all those price data come from this site: http://www.creprice.cn/naprice/funation.html
lat <- c(39.9047253699,40.9514710865,40.8244345101,38.8739745619,39.5377360138,39.0850853357,39.6304907838)
lng <- c(116.4072154982,117.9633664635,114.8875440254,115.4646082830,116.6837380445,117.1993482089,118.1805948789)
city <- c('beijing','chengde','zhangjiakou','baoding','langfang','tianjin','tanshan')
price <- c(66165,8825,9346,11550,21571,26256,7089)

df <- data.frame(lat=lat,lng=lng,city = city, price = price)

df %>%
        leaflet() %>%
        addTiles() %>%
        addMarkers()

