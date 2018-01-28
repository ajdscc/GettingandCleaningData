## Getting and Cleaning Data Course Project - Assignment
## 
## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(tidyverse)

## Check if data source has been downloaded and unzip in folder created in current working directory
if (!dir.exists("./Week4Project")) {
  dir.create("./Week4Project")
  setwd("Week4Project")

  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, temp)
  unzip(temp)
  unlink(temp)
}

# data path relative to current working directory
data_path <- paste0("./",dir(),"/")

## Train data file URL
train_X_fileURL <- paste0(data_path,"train/X_train.txt")
train_y_fileURL <- paste0(data_path,"train/y_train.txt")
train_subject_fileURL <- paste0(data_path,"train/subject_train.txt")

## Test data file URL
test_X_fileURL <- paste0(data_path,"test/X_test.txt")
test_y_fileURL <- paste0(data_path,"test/y_test.txt")
test_subject_fileURL <- paste0(data_path,"test/subject_test.txt")

# Feature names and Activity labels URL
feature_names_fileURL <- paste0(data_path,"features.txt")
activity_labels_fileURL <- paste0(data_path,"activity_labels.txt")

# do object some cleaup
rm(data_path)


## 1. Merges the training and the test sets to create one data set.
##

test_subject <- read.table(test_subject_fileURL, col.names = "subject" )
test_X <- read.table(test_X_fileURL, header = FALSE )
test_y <- read.table(test_y_fileURL, col.names = "y" )
test <- cbind(test_subject, test_X, test_y)

train_subject <- read.table(train_subject_fileURL, col.names = "subject" )
train_X <- read.table(train_X_fileURL, header = FALSE )
train_y <- read.table(train_y_fileURL, col.names = "y" )
train <- cbind(train_subject, train_X, train_y)

data <- rbind(test, train)

#cleanup objects
rm(list = grep("^test|^train",ls(), value = TRUE))


## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##

# read table with feature names and convert into vector
feature_names <- read.table(feature_names_fileURL, colClasses = c("NULL","character"))[,1]

# replace feature names containing string "BodyBody" with "Body"
feature_names <- sub("BodyBody", "Body", feature_names)

# Select only features related to mean and standard deviation for each measurement
col_idx <- grep("mean|std", feature_names)

data <- select(data, c("subject", paste0("V",col_idx), "y"))


## 3. Uses descriptive activity names to name the activities in the data set
##

# read table with activity description and convert into vector
activity <- read.table(activity_labels_fileURL, colClasses = c("NULL","character"))[,1]

# replace dependent variable y with descriptive activity label
data$y <- activity[data$y]


## 4. Appropriately label the data set columns with descriptive variable names. 
##

names(data) <- c("subject",feature_names[col_idx],"activity")


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##

average <- data %>% group_by(activity, subject) %>% summarise_all(funs(mean))
write.table(average,"average.txt")

