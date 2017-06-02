 #Load data concerning devs with most hours
 dataMost <-read.csv("Documents/DataChallenge/DataUsing/workedMost.csv")
 dataLeast <-read.csv("Documents/DataChallenge/DataUsing/workedLeast.csv")
hist(dataMost$Debug.COUNT...) 
hist(dataLeast$Debug.COUNT...)
cor(dataMost$Copy.COUNT, dataMost$Paste.COUNT)
cor(dataLeast$Copy.COUNT, dataLeast$Paste.COUNT)
