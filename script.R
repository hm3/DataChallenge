 #Load data concerning devs with most hours
 dataMost <-read.csv("Documents/DataChallenge/DataUsing/workedMost.csv")
 #Load data concerning devs with least hours
 dataLeast <-read.csv("Documents/DataChallenge/DataUsing/workedLeast.csv")
 #Histogram for count of Debug events
hist(dataMost$Debug.COUNT...) 
hist(dataLeast$Debug.COUNT...)
#Correlation between copying and pasting: .957
cor(dataMost$Copy.COUNT, dataMost$Paste.COUNT)
#Correlation between copying and pasting: .983
cor(dataLeast$Copy.COUNT, dataLeast$Paste.COUNT)
#Correlation between using the debugger and 
#pasting code: -.411
cor(dataMost$Debug.COUNT...,dataMost$Paste.COUNT)
#Correlation between using the debugger and
#pasting code: .779
cor(dataLeast$Debug.COUNT...,dataLeast$Paste.COUNT)