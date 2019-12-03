tempat_tb <- ("e:/TBDataMining")
setwd (tempat_tb)
getwd ()

library(C50)
library(printr)

dataset <- read.csv("abalone.csv" , sep = ",")
summary(dataset)

model <- C5.0 (Sex~ , data=dataset)
summary(model)

plot(model)

datatesting <- dataset[1:9]
prediksi <- predict(model, datatesting)
table(prediksi,dataset$Diameter)
