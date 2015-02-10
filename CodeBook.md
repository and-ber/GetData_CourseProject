# Codebook

##Introduction
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The input data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
[Human Activity Recognition Using Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Here are the data for the project:
[Dataset] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, were captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The R code ` run_analysis.R` performs the following tasks:
1. Merge the training and the test sets to create one data set
2. Assign descriptive activity names to name the activities in the data set, as per file "activity_labels.txt"
3. Extract only the measurements on the mean and standard deviation for each measurement
4. Appropriately label the data set variables with descriptive names as per file "features.txt"
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
6. Sort the data per subject and per activity and write them in two files, respectively in txt and csv You should create one R script called run_analysis.R that does the following. 

##The Data
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
------------------------------
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
- Triaxial Angular velocity from the gyroscope
- A 561-feature vector with time and frequency domain variables
- Its activity label
- An identifier of the subject who carried out the experiment

The dataset includes the following files:
----------------------------------------
- features.txt: List of all features
- activity_labels.txt: Links the class labels with their activity name
- train/X_train.txt: Training set
- train/y_train.txt: Training labels
- train/subject_train.txt: Training Subject labels
- test/X_test.txt: Test set
- test/y_test.txt: Test labels
- test/subject_train.txt: Test Subkject labels

