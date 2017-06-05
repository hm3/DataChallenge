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
#Histogram for count of Copy events
hist(dataMost$Copy.COUNT,
     main = "Copy Usage in Most Active Developers",
     xlab = "Total Copy Use")
hist(dataLeast$Copy.COUNT, 
     main = "Total Copy Usage in Least Active Developers",
     xlab = "Total Copy Use")
#Histogram for count of Paste events
hist(dataMost$Paste.COUNT, 
     main = "Total Paste Usage in Most Active Developers",
     xlab = "Total Paste Use")
hist(dataLeast$Paste.COUNT,
     main = "Total Paste Usage in Least Active Developers",
     xlab = "Total Paste Use")
#Histogram for count of Build events
hist(dataMost$Build.COUNT,
     main = "Total Build Usage in Most Active Developers",
     xlab = "Total Build Use")
hist(dataLeast$Build.COUNT,
     main = "Total Build Usage in Least Active Developers",
     xlab = "Total Build Use")
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
#Histogram for proportion of Copy events over total events
hist(dataMost$Copy.Total,
     main = "Copying as a Proportion of All Events
     in Most Active Developers",
     xlab = "Copying Event Total/All Events")
hist(dataLeast$Copy.Total,
     main = "Copying as a Proportion of All Events
     in Least Active Developers",
     xlab = "Copying Event Total/All Events")
#Histogram for proportion of Paste events over total events
hist(dataMost$Paste.Total,
     main = "Pasting as a Proportion of All Events
     in Most Active Developers",
     xlab = "Pasting Event Total/All Events")
hist(dataLeast$Paste.Total,
     main = "Pasting as a Proportion of All Events
     in Least Active Developers",
     xlab = "Paste Event Total/All Events")
#Histogram for proportion of Build events over total events
hist(dataMost$Build.Total,
     main = "Building as a Proportion of All Events
     in Most Active Developers",
     xlab = "Build Event Total/All Events")
hist(dataLeast$Build.Total,
     main = "Build Events as a Proportion of all Events
     in Least Active Developers",
     xlab = "Build Event Total/All Events")
#Make a table with only the median values for the proportions 
#of events;
#the first row is the most active developers, 
#the second row is the least active developers
x <- data.frame("Debug" = median(dataMost$Debug.Total), "Copy" = median(dataMost$Copy.Total), "Paste" = median(dataMost$Paste.Total), "Build" = median(dataMost$Build.Total))
x <- rbind(x, data.frame("Debug" = median(dataLeast$Debug.Total), "Copy" = median(dataLeast$Copy.Total), "Paste"=median(dataLeast$Paste.Total), "Build"= median(dataLeast$Build.Total)))
#Bar plot for median proportions of Debugging/All Events
barplot(x$Debug,
        main = "Median Proportion of Debugging over All Events",
        xlab = "Most Active Developers   Least Active Developers")
#Bar plot for median proportions of Copying/All Events
barplot(x$Copy,
        main = "Median Proportion of Copying over All Events",
        xlab = "Most Active Developers   Least Active Developers")
#Bar plot for median proportions of Pasting/All Events
barplot(x$Paste,
        main = "Median Proportion of Pasting over All Events",
        xlab = "Most Active Developers   Least Active Developers")
#Bar plot for median proportions of Building/All Events
barplot(x$Build,
        main = "Median Proportion of Building over All Events",
        xlab = "Most Active Developers   Least Active Developers")
#Joe's work
debugDataM <- table(dataMost$Hours.COUNT, dataMost$Debug.COUNT...)
debugDataL <- table(dataLeast$Hours.COUNT, dataLeast$Debug.COUNT...)

#I have succesfully combined data, but it continues to refuse to be displayed
#combinedTable <- merge(debugDataL,debugDataM, by="hours")
combinedTable <- rbind(debugDataL,debugDataM)
#barplot(rownames(combinedTable), columns(combinedTable), main="Debug commands used per person", xlab="Number of debugs", col=c("red","darkblue"), beside=TRUE)

#Separated bar graphs, because this is getting ridiculous
barplot(dataMost$Debug.COUNT..., dataMost$Hours.COUNT, main="Debug commands used per person", ylab="Number of debug commands", xlab="hours",col=c("red","darkblue"), legend=dataMost$userId, beside=TRUE)
barplot(dataLeast$Debug.COUNT..., dataLeast$Hours.COUNT, main="Debug commands used per person", ylab="Number of debug commands", xlab="hours", col=c("red", "darkblue"), legend=dataLeast$userId)

#Bar graphs for the other commands, since it might be helpful
barplot(dataMost$Build.COUNT, dataMost$Hours.COUNT, main="Build commands used per person", ylab="Number of builds", xlab="hours",col=c("red","darkblue"), legend=dataMost$userId, beside=TRUE)
barplot(dataLeast$Build.COUNT, dataLeast$Hours.COUNT, main="Build commands used per person", ylab="Number of builds", xlab="hours", col=c("red", "darkblue"), legend=dataLeast$userId)
barplot(dataMost$Copy.COUNT, dataMost$Hours.COUNT, main="Copy commands used per person", ylab="Number of copy commands", xlab="hours",col=c("red","darkblue"), legend=dataMost$userId, beside=TRUE)
barplot(dataLeast$Copy.COUNT, dataLeast$Hours.COUNT, main="Copy commands used per person", ylab="Number of copy commands", xlab="hours", col=c("red", "darkblue"), legend=dataLeast$userId)
barplot(dataMost$Paste.COUNT, dataMost$Hours.COUNT, main="Paste commands used per person", ylab="Number of paste commands", xlab="hours",col=c("red","darkblue"), legend=dataMost$userId, beside=TRUE)
barplot(dataLeast$Paste.COUNT, dataLeast$Hours.COUNT, main="Paste commands used per person", ylab="Number of paste commands", xlab="hours", col=c("red", "darkblue"), legend=dataLeast$userId)
plot(debugDataM)
plot(debugDataL)