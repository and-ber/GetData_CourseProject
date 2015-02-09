# Getting and Cleaning Data Course Project, Johns Hopkins University

##Introduction

The R script in this repository `run_analysis.R` has been created as part of the course Getting and Cleaning Data of Johns Hopkins University.

The purpose of the code is basically to load the data "Human Activity Recognition Using Smartphones Dataset, Version 1.0" and perform the following tasks:

1. Merge the training and the test sets to create one data set
2. Assign descriptive activity names to name the activities in the data set, as per file "activity_labels.txt"
3. Extract only the measurements on the mean and standard deviation for each measurement
4. Appropriately label the data set variables with descriptive names as per file "features.txt"
5. From the data set in step 4, create a second, independent tidy data set with the average 
    of each variable for each activity and each subject
6. Sort the data per subject and per activity and write them in two files, respectively in txt and csv

To understand the data the `CodeBook.md` included in this repository provides the necessary information on the data and the transformations performed. 

##How to run the R script and use the data

Prior to run the R code, it is suggested to clone this repository, in order to keep the input data structure under the folder `UCI HAR Dataset`. Such folder should be placed in the working directory of the R environment used.

The output are two files of different format, but with the same content:
* TidyData.csv
* TidyData.txt
  
which will be automatically saved in the working directory.
For reference, these files are also included in this repository.



