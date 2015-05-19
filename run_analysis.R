##extracting data for activities and features
setwd("~/Desktop/Coursera/UCI HAR Dataset")
activity <- read.table("activity_labels.txt", sep = " ")
colnames(activity) <- c("activity_label", "activity_type")
features<- read.table("features.txt", sep = " ")

## extracting test data for variables measured and activities
setwd("~/Desktop/Coursera/UCI HAR Dataset/test")
subject_test<- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
Y_test <- read.table("Y_test.txt")

## extracting train data for variables measured and activities
setwd("~/Desktop/Coursera/UCI HAR Dataset/train")
subject_train<- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
Y_train <- read.table("Y_train.txt")

## combining test and train data for variables, subjects and activities
subject_data<- rbind(subject_test, subject_train)
Y_data<- rbind(Y_test, Y_train)
Xdata<- rbind(X_test, X_train)

##naming columns
colnames(subject_data)[1]<- "subject_ID"
colnames(Y_data)[1]<- "activity_type"
colnames(Xdata)<- features[,2]

## extracting activity names and replacing the number code with them
num_rows = nrow(Y_data)
for(i in 1:num_rows)
{ 
  if(Y_data[i,1] == "1") {Y_data[i,1]<- "WALKING"}
  if(Y_data[i,1] == "2") {Y_data[i,1]<- "WALKING_UPSTAIRS"}
  if(Y_data[i,1] == "3") {Y_data[i,1]<- "WALKING_DOWNSTAIRS"}
  if(Y_data[i,1] == "4") {Y_data[i,1]<- "SITTING"}
  if(Y_data[i,1] == "5") {Y_data[i,1]<- "STANDING"}
  if(Y_data[i,1] == "6") {Y_data[i,1]<- "LAYING"}
}

## extracting mean and std data from the measurements taken
Xdata_mean <- grep("mean()", colnames(Xdata), ignore.case = TRUE, invert = TRUE)
Xdata_std <- grep("std()", colnames(Xdata), ignore.case = TRUE, invert = TRUE)
Xdata_delete<- intersect(Xdata_mean, Xdata_std)
Xdata<- Xdata[-Xdata_delete]

##combining all the data
data<- cbind(subject_data, Y_data, Xdata)

## preparing a tidy dataset for variable averages by subjects and activities
tidydata_subavg<- aggregate(data[,3:86], by = list(data$subject_ID),mean) 
tidydata_activityavg<- aggregate(data[,3:86], by = list(data$activity_type),mean) 
tidydata<- rbind(tidydata_subavg,tidydata_activityavg)
colnames(tidydata)[1] <- "subject/ activity"

