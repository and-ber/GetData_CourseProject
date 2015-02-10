## The following code loads the data "Human Activity Recognition Using Smartphones Dataset, Version 1.0"
## and does the following:
## 1. Merges the training and the test sets to create one data set
## 2. Assign descriptive activity names to name the activities in the data set, as per file "activity_labels.txt"
## 3. Extracts only the measurements on the mean and standard deviation for each measurement
## 4. Appropriately labels the data set variables with descriptive names as per file "features.txt"
## 5. From the data set in step 4, creates a second, independent tidy data set with the average 
##    of each variable for each activity and each subject
## 6. Sort the data per subject and per activity and write them in two files, respectively in txt and csv format

## NOTE: the code works as long as the data directory "UCI HAR Dataset" is in the working directory

#Loads the feature name of each variable (file "features.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
# Loads the description of each activity
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Loads and reshapes the training data

# Loads all training data
data1 <- read.table("./UCI HAR Dataset/train/X_train.txt")
# Assigns descriptive variable names to each column
colnames(data1)<-features[,2]
# Loads the Subject id corresponding to each set of data and gives a descriptive name to the variable
subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject) <- "SubjectId"
# Loads the Activity id corresponding to each set of data 
activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
# Translate every activity id with a description and give descriptive names to each column
activity[,2] <- activity_labels[activity[,1],2]
colnames(activity) <- c("ActivityId", "Activity")
# Merges the subject and activities columns to the whole training data set
data1 <- cbind(subject,activity,data1)

## Loads and reshapes the test data (follows the same steps as per training data)

data2 <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(data2)<-features[,2]
subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject) <- "SubjectId"
activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity[,2] <- activity_labels[activity[,1],2]
colnames(activity) <- c("ActivityId", "Activity")
data2 <- cbind(subject,activity,data2)

# Merges training and test data sets
data = rbind(data1,data2)

# Extracts only the measurements on the mean and standard deviation for each measurement
a <- sort(c(1:3, grep("mean()",names(data),fixed=T), grep("std()",names(data),fixed=T)))
data <- data[,a]

library(dplyr)
data <- tbl_df(data)
FinalData <- data %>%
  group_by(SubjectId, ActivityId, Activity) %>%
  summarise_each(funs(mean))

# Writes the final data set in csv and text format, omitting the row names
write.csv(FinalData, file="./TidyData.csv",row.names=FALSE)
write.table(FinalData, file="./TidyData.txt",row.names=FALSE)
