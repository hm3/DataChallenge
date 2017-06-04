 #Load data concerning devs with most hours
 dataMost <-read.csv("Documents/DataChallenge/DataUsing/workedMost.csv")
 #Load data concerning devs with least hours
 dataLeast <-read.csv("Documents/DataChallenge/DataUsing/workedLeast.csv")
#Histogram for count of Debug events
hist(dataMost$Debug.COUNT...,
     main = "Debug Usage in Most Active Developers",
     xlab = "Total Debugger Use") 
hist(dataLeast$Debug.COUNT...,
     main = "Debug Usage in Least Active Developers",
     xlab = "Total Debugger Use")
#Correlation between copying and pasting: .957
cor(dataMost$Copy.COUNT, dataMost$Paste.COUNT)
#Correlation between copying and pasting: .985
cor(dataLeast$Copy.COUNT, dataLeast$Paste.COUNT)
#Correlation between using the debugger and 
#pasting code: -.411
cor(dataMost$Debug.COUNT...,dataMost$Paste.COUNT)
#Correlation between using the debugger and
#pasting code: .804
cor(dataLeast$Debug.COUNT...,dataLeast$Paste.COUNT)
#Debug.Total = Debug/Total, proportion of event over total events
#Histogram for proportion of Debug events over total events 
#in most active programmers
hist(dataMost$Debug.Total,
     main = "Debugging as a Proportion of All Events 
     in Most Active Developers",
     xlab = "Debugging Event Total/Total All Events")
#Histogram for proportion of Debug events over total events 
#in least active programmers
hist(dataLeast$Debug.Total,
     main = "Debugging as a Proportion of All Events 
     in Least Active Developers",
     xlab = "Debugging Event Total/Total All Events")
#Make a table with only the median values for the proportions 
#of events;
#the first row is the most active developers, 
#the second row is the least active developers
x <- data.frame("Debug" = median(dataMost$Debug.Total), "Copy" = median(dataMost$Copy.Total), "Paste" = median(dataMost$Paste.Total), "Build" = median(dataMost$Build.Total))
x <- rbind(x, data.frame("Debug" = median(dataLeast$Debug.Total), "Copy" = median(dataLeast$Copy.Total), "Paste"=median(dataLeast$Paste.Total), "Build"= median(dataLeast$Build.Total)))