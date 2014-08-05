## Assignement

setwd("C://Users/Usager/Documents/Coursera/GettingData/UCI HAR Dataset")

ResultsAll <- data.frame()
SubjectsAll <- data.frame()
LabelsAll <- data.frame()

## Reading the data
for(i in 1:2) {

  if (i==1) DataName <- "test"
  else      DataName <- "train"
  
  Results <- read.table(paste("./", DataName, "/X_", DataName, ".txt",sep=""))
  Subjects <- read.table(paste("./", DataName, "/subject_", DataName,".txt", sep=""))
  Labels <- read.table(paste("./", DataName, "/y_", DataName, ".txt",sep=""))
      
  ResultsAll <- rbind(ResultsAll,Results)
  SubjectsAll <- rbind(SubjectsAll,Subjects)
  LabelsAll <- rbind(LabelsAll,Labels)

}

##Giving names to column
ColumnNames <- read.table("features.txt")
names(ResultsAll) <- ColumnNames$V2

##Merge Subjects and Labels to Results
names(SubjectsAll) <- "Subjects"
names(LabelsAll) <- "Labels"
ResultsAll <- cbind(ResultsAll,SubjectsAll,LabelsAll)

## Only keep mean and std dev for each measurements
Mean <- grep("-mean(", ColumnNames$V2,fixed=TRUE)
Std <- grep("-std(", ColumnNames$V2,fixed=TRUE)
ResultsMeanStd <- ResultsAll[,c(Mean,Std,562,563)]

## Rename activities to be descriptive
ActivityNames <- read.table("activity_labels.txt")
names(ActivityNames) <- c("Labels","Activity_Description")
ResultsMeanStd <- merge(ResultsMeanStd,ActivityNames,by.x="Labels",by.y="Labels")

## Create 2nd data set with the avg for each variable for each activity and each subject
DataSummary <- aggregate(ResultsMeanStd[,2:67], by=list(ResultsMeanStd$Subjects,ResultsMeanStd$Activity_Description), FUN=mean)

names(DataSummary)[1:2] <- c("Subject","Activity_Description")
names(DataSummary) <- gsub("(","",names(DataSummary),fixed=TRUE)
names(DataSummary) <- gsub(")","",names(DataSummary),fixed=TRUE)                                                      
write.table(DataSummary,file="Datasummary.txt")
