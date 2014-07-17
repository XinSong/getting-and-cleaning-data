#Downloads the data and extracts it
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,"Dataset.zip")
unzip("Dataset.zip")
setwd("UCI HAR Dataset/")

#Get the measurements on the mean and standard deviation for each measurement
feature <- read.table("features.txt",col.names=c("seq_number","name"),stringsAsFactors=FALSE)
feature.mean.and.std <- feature[grepl("(mean|std)\\(\\)",feature$name),]
# Change the names of selected measurements, so it can be more descriptive
feature.mean.and.std$name <- gsub("-mean\\(\\)","Mean",feature.mean.and.std$name)
feature.mean.and.std$name <- gsub("-std\\(\\)","Std",feature.mean.and.std$name)
feature.mean.and.std$name <- gsub("[()-]","",feature.mean.and.std$name)

#merge the training and test set
train.x <- read.table("train/X_train.txt")
train.y <- read.table("train/y_train.txt",col.names="label")
train.subject <- read.table("train/subject_train.txt")
test.x <- read.table("test/X_test.txt")
test.y <- read.table("test/y_test.txt",col.names="label")
test.subject <- read.table("test/subject_test.txt")
data<-rbind(train.x,test.x)
data <- data[,feature.mean.and.std$seq_number]
colnames(data) <- feature.mean.and.std$name
data$subject <- as.factor(rbind(train.subject,test.subject)[,1])
data$label <- as.factor(rbind(train.y,test.y)[,1])

#Get the activity label description
activity <- read.table("activity_labels.txt",col.names=c("level","label"))
data$label <- factor(data$label,levels=activity$level,labels=activity$label)

#create tidy data set with the average of each variable for each activity and each subject
data.dt <- data.table(data)
tidy.data.dt <- data.dt[,lapply(.SD,mean),by=list(label,subject)]
write.table(tidy.data.dt,file="tidy_data.txt",quote=FALSE,row.names=FALSE)
