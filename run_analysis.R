#Downloads the data and extracts it
library(data.table)
download.data <- function(){
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,"Dataset.zip")
unzip("Dataset.zip")
}

setwd("UCI HAR Dataset/")
#First,read train and test data, then merge them
train.x <- read.table("train/X_train.txt")
train.y <- read.table("train/y_train.txt",col.names="label")
train.subject <- read.table("train/subject_train.txt")
test.x <- read.table("test/X_test.txt")
test.y <- read.table("test/y_test.txt",col.names="label")
test.subject <- read.table("test/subject_test.txt")
data<-rbind(train.x,test.x)
data$subject <- as.factor(rbind(train.subject,test.subject)[,1])
data$label <- as.factor(rbind(train.y,test.y)[,1])

#Extract the measurements on the mean and standard deviation for each measurement,
#and use descriptive activity names to name the activities in the data set
feature <- read.table("features.txt",col.names=c("seq_number","name"),stringsAsFactors=FALSE)
feature.mean.and.std <- feature[grepl("(mean|std)\\(\\)",feature$name),]
feature.mean.and.std$name <- gsub("-mean\\(\\)","Mean",feature.mean.and.std$name)
feature.mean.and.std$name <- gsub("-std\\(\\)","Std",feature.mean.and.std$name)
feature.mean.and.std$name <- gsub("[()-]","",feature.mean.and.std$name)
data <- data[,feature.mean.and.std$seq_number]
colnames(data) <- feature.mean.and.std$name

#Label the data set with descriptive variable names
activity <- read.table("activity_labels.txt",col.names=c("level","label"))
data$label <- factor(data$label,levels=activity$level,labels=activity$label)

#Create a tidy data set and write it in `tidy_data.txt`
data.dt <- data.table(data)
tidy.data.dt <- data.dt[,lapply(.SD,mean),by=list(label,subject)]
write.table(tidy.data.dt,file="tidy_data.txt",quote=FALSE,row.names=FALSE)
