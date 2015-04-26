print("run_analysis.R")
print("GetData-013 course project script")
print("Author : Raj Kumar")

print("Pre work: ")

print("Get the data from the zip file, so download contents")
print("from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
print("Then, gather the relevant files into a folder to be named UCI HAR Dataset in your working directory.")

# The code:

print("1. Read the data files into R:")
print("Subject:")

subjecttesting <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtesting <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytesting <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subjecttraining <- read.table("./UCI HAR Dataset/train/subject_train.txt")
xtraining <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytraining <- read.table("./UCI HAR Dataset/train/Y_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activitiesLables <- read.table("./UCI HAR Dataset/activity_labels.txt")

print("2. Merge all that data into one dataset")
xall <- rbind(xtraining, xtesting)
yall <- rbind(ytraining, ytesting)
suball <- rbind(subjecttraining, subjecttesting)
completeData <- cbind(suball, yall, xall)

rm(xtesting,ytesting,xtraining,ytraining,subjecttraining,subjecttesting,xall,yall,suball)  # housecleaning

print("3. Name the measurement columns after the feature names, and give names to the id columns")
featureNames <- as.character(features[,2])
newCols <- c("subject", "activity", featureNames)
colnames(completeData) <- newCols

print("4. Create a new data frame whose measurement columns contain only mean and st. dev features")

onlyMeans <- grep("mean()", colnames(completeData))
onlyStDevs <- grep("std()", colnames(completeData))
revisedColumns <- c(onlyMeans, onlyStDevs)
revisedColumns2 <- sort(revisedColumns) 
newDataFrame <- completeData[, c(1,2,revisedColumns2)]
newDataFrame2 <- newDataFrame[, !grepl("Freq", colnames(newDataFrame))] #get rid of the meanFreq columns

print("more housekeeping, remove newDatafrme")
rm(newDataFrame, completeData) 

print("5. Trim the rows to the 180 needed to show mean values for each subject-activity pair")
tidyframe <- data.frame()
for (i in 1:30) {
  subj<- subset(newDataFrame2,subject==i)
  for (j in 1:6){
    actv<- subset(subj, activity==j)
    myresult<-as.vector(apply(actv,2,mean))
    tidyframe<-rbind(tidyframe,myresult) 
  }
  
  
}

print("6. Rename tidyframe data and output the data to Samsung_Data.txt")

colnames(tidyframe)<-colnames(newDataFrame2) #rename the columns again, as the names get lost in the mix above
levels(tidyframe[,2])<-c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING')
write.table(tidyframe, "Samsung_Data.txt",row.names = FALSE, sep = "")

print("end of script, please see the cleaned data file Samsung_Data.txt in the working directory")
