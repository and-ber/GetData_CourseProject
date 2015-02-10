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
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
- Triaxial Angular velocity from the gyroscope
- A 561-feature vector with time and frequency domain variables
- Its activity label (1 to 6: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)
- An identifier of the subject who carried out the experiment

The dataset includes the following files:
- features.txt: List of all features
- activity_labels.txt: Links the class labels with their activity name
- train/X_train.txt: Training set
- train/y_train.txt: Training labels
- train/subject_train.txt: Training Subject labels for each window sample
- test/X_test.txt: Test set
- test/y_test.txt: Test labels
- test/subject_train.txt: Test Subject labels for each window sample

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 
mean(): Mean value  
std(): Standard deviation   
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values  
iqr(): Interquartile range  
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal  
kurtosis(): kurtosis of the frequency domain signal  
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window  
angle(): Angle between to vectors  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

The complete list of variables of each feature vector is available in `features.txt`.

##Transformation of the Data

Respectively the training and test datasets are loaded and transformed as follows:
- to each activity, identified with an id. number, is assigned a descriptive name as per file `activity_labels.txt`
- to each variable, correspondig to the columns of the dataset, is assigned a descriptive name as per file `features.txt`
- to each observation, corresponding to the rows of the dataset, the corresponding id of the subject performing the activity is assigned
Then the training and test datasets are merged together.

##Cleaning of the Data

With an operation of extraction only the measurements on the mean and standard deviation for each measurement are kept, resulting in the following data for each window sample:

25	tBodyGyro-std()-X		
26	tBodyGyro-std()-Y		
27	tBodyGyro-std()-Z		
28	tBodyGyroJerk-mean()-X		
29	tBodyGyroJerk-mean()-Y		
30	tBodyGyroJerk-mean()-Z		
31	tBodyGyroJerk-std()-X		
32	tBodyGyroJerk-std()-Y		
33	tBodyGyroJerk-std()-Z		
34	tBodyAccMag-mean()		
35	tBodyAccMag-std()		
36	tGravityAccMag-mean()		
37	tGravityAccMag-std()		
38	tBodyAccJerkMag-mean()		
39	tBodyAccJerkMag-std()		
40	tBodyGyroMag-mean()		  
41	tBodyGyroMag-std()		  
42	tBodyGyroJerkMag-mean()		  
43	tBodyGyroJerkMag-std()		  
44	fBodyAcc-mean()-X		  
45	fBodyAcc-mean()-Y		  
46	fBodyAcc-mean()-Z		  
47	fBodyAcc-std()-X		  
48	fBodyAcc-std()-Y		  
49	fBodyAcc-std()-Z		  
50	fBodyAccJerk-mean()-X		  
51	fBodyAccJerk-mean()-Y		  
52	fBodyAccJerk-mean()-Z		  
53	fBodyAccJerk-std()-X		  
54	fBodyAccJerk-std()-Y		  
55	fBodyAccJerk-std()-Z		  
56	fBodyGyro-mean()-X		  
57	fBodyGyro-mean()-Y		  
58	fBodyGyro-mean()-Z		  
59	fBodyGyro-std()-X		  
60	fBodyGyro-std()-Y		  
61	fBodyGyro-std()-Z		  
62	fBodyAccMag-mean()		  
63	fBodyAccMag-std()		  
64	fBodyBodyAccJerkMag-mean()		  
65	fBodyBodyAccJerkMag-std()		  
66	fBodyBodyGyroMag-mean()		  
67	fBodyBodyGyroMag-std()		  
68	fBodyBodyGyroJerkMag-mean()		  
69	fBodyBodyGyroJerkMag-std()		  



