
# GettingandCleaningData
Coursera Getting and Cleaning Data

## Introduction

The goal is to prepare tidy data that can be used for later analysis. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Transformation done by run_analysis.R:

0. Check if data source has been downloaded and unzip in folder created in current working directory.

   Primary functions used: *dir.exists()* and *unzip()*

1. Merges the training and the test sets to create one data set called **data**

   Primary functions used: *read.table()*, *cbind()*, *rbind()*

2. Extracts only the measurements on the mean and standard deviation for each measurement.

   Primary functions used: *grep()* and *select()*
   
3. Uses descriptive activity names to name the activities in the data set by replacing dependent variable **y** with descriptive activity label

4. Appropriately labels the data set with descriptive variable names by replacing **Vx** column names with selected feature names.

5. From the data set in step 4, creates a second, independent tidy data set called **average** with the average of each variable for each activity and each subject. Then exports table to a file called **average.txt**. 

   Check criteria for classifying as tidy data set:
   1. Each variable measured/calculated should be in one column
   2. Each different observation of that variable should be in a different row
   3. There should be one table for each “kind” of variable
   
   `A tibble: 180 x 81`
    Rows: 30 subjects x 6 activities
    Columns: 81 features (subject, activity, <79 measurements>)  -- pls refer to [Code Book](https://github.com/ajdscc/GettingandCleaningData/blob/master/CodeBook.md)
    
    Primary functions used: *group_by()*, *summarise_all()*, *mean()*, *write.table()*
