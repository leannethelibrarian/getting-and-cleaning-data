#CodeBook

## Introduction
The tidied Smartphones data consists of two data files, tidydata.txt and tidydataavg.txt. Both of these datasets are derived from the raw data files provided through the "Human Activity Recognition Using Smartphones Dataset"

## Source Data
The source data is the "Human Activity Recognition Using Smartphones Dataset" which was the result of research conducted by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto of the Smartlab (Non Linear Complex Systems Laboratory) at the Universiti degli Studi di Genova. The source data were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

The source data was provided in the form of a variety of .txt files with related descriptive documents.

A full description of the source dataset is available on their website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Purpose
The purpose of this activity was to tidy the source data in preparation for further analysis. The script run_analysis.R processes the source data, tidying it and saving it in two new files, tidydata.txt and tidydataavg.txt. The remainder of this codebook provides a description of the contents of these two files.

## Dataset 1: tidydata.text
This file includes an extract of the needed variables from the source data, combined with columns of information about each unique case (row), and features a tidied table structure, descriptive variable names, and variable category names.

###Variables

**1) subject**. Integer. The unique ID for the individual subject, ranges from 1-30. 

**2) activity**. Factor. The activity being performed when the measurement was taken. Valid values are: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING". 

**3-68). Measurements**. Numeric. There are 66 measurement variables in tidydata.txt. 

The measurements came from accelerometer (tAcc) and gyroscope (tGyro) 3-axial (XYZ) signals measured in the source study. Accelerometer readings are in standard gravity units 'g'. Gyroscope readings are in radians/second.

The acceleration signals were separated into body accelleration (tBodyAcc) and gravity acceleration (tGravityAcc). Jerk signals were also derived (tBodyAccJerk) and (tBodyGyroJerk), and the magnitude of the signals was calculated (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, and tBodyGyroJerkMag). A Fast Fourier Transform (FFT) was applied to some signals (producing fBodyAdd, fBodyAccJerk, fBodyGyro, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag). Some of the signals are separated into x, y, and z values to denote the 3-axial signal which was measured, for a total of 33 signals. (For more information on how each of the signals was meausured or derived, please consult the documentation in the source dataset (link above).)

For each of these 33 signals, the mean and standard deviation is included in tidydata.txt.

Here is the complete list of measurement variable names:

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()

### Cases
There are 10,299 records in tidydata.txt. Each record represents the set of measurements taken for each 2.56 second sliding window of time during which each of 30 participants performed one of six activities while wearing the smartphone (Samsung Galaxy S II) on their waist.  

In the original study, the data collected was randomly divided into a training dataset (70% of cases) and a test dataset (30% of cases), but for this activity the training and test datasets were re-integrated to form one complete dataset for the study as a whole.


## Dataset 2: tidydataavg.txt
This file includes provides the average of each variable contained in tidydata.txt, for each subject, for each activity.

### Variables
**1) subject**. Integer. The unique ID for the individual subject, ranges from 1-30. 

**2) activity**. Factor. The activity being performed when the measurement was taken. Valid values are: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING". 

**3-68). Average values**. Numeric. There are 66 numeric variables in tidydataavg.txt. Each contains the the average for each of the 66 measurement variables described above. The variable names are as follows:

- AVG tBodyAcc-mean()-X
- AVG tBodyAcc-mean()-Y
- AVG tBodyAcc-mean()-Z
- AVG tBodyAcc-std()-X
- AVG tBodyAcc-std()-Y
- AVG tBodyAcc-std()-Z
- AVG tGravityAcc-mean()-X
- AVG tGravityAcc-mean()-Y
- AVG tGravityAcc-mean()-Z
- AVG tGravityAcc-std()-X
- AVG tGravityAcc-std()-Y
- AVG tGravityAcc-std()-Z
- AVG tBodyAccJerk-mean()-X
- AVG tBodyAccJerk-mean()-Y
- AVG tBodyAccJerk-mean()-Z
- AVG tBodyAccJerk-std()-X
- AVG tBodyAccJerk-std()-Y
- AVG tBodyAccJerk-std()-Z
- AVG tBodyGyro-mean()-X
- AVG tBodyGyro-mean()-Y
- AVG tBodyGyro-mean()-Z
- AVG tBodyGyro-std()-X
- AVG tBodyGyro-std()-Y
- AVG tBodyGyro-std()-Z
- AVG tBodyGyroJerk-mean()-X
- AVG tBodyGyroJerk-mean()-Y
- AVG tBodyGyroJerk-mean()-Z
- AVG tBodyGyroJerk-std()-X
- AVG tBodyGyroJerk-std()-Y
- AVG tBodyGyroJerk-std()-Z
- AVG tBodyAccMag-mean()
- AVG tBodyAccMag-std()
- AVG tGravityAccMag-mean()
- AVG tGravityAccMag-std()
- AVG tBodyAccJerkMag-mean()
- AVG tBodyAccJerkMag-std()
- AVG tBodyGyroMag-mean()
- AVG tBodyGyroMag-std()
- AVG tBodyGyroJerkMag-mean()
- AVG tBodyGyroJerkMag-std()
- AVG fBodyAcc-mean()-X
- AVG fBodyAcc-mean()-Y
- AVG fBodyAcc-mean()-Z
- AVG fBodyAcc-std()-X
- AVG fBodyAcc-std()-Y
- AVG fBodyAcc-std()-Z
- AVG fBodyAccJerk-mean()-X
- AVG fBodyAccJerk-mean()-Y
- AVG fBodyAccJerk-mean()-Z
- AVG fBodyAccJerk-std()-X
- AVG fBodyAccJerk-std()-Y
- AVG fBodyAccJerk-std()-Z
- AVG fBodyGyro-mean()-X
- AVG fBodyGyro-mean()-Y
- AVG fBodyGyro-mean()-Z
- AVG fBodyGyro-std()-X
- AVG fBodyGyro-std()-Y
- AVG fBodyGyro-std()-Z
- AVG fBodyAccMag-mean()
- AVG fBodyAccMag-std()
- AVG fBodyBodyAccJerkMag-mean()
- AVG fBodyBodyAccJerkMag-std()
- AVG fBodyBodyGyroMag-mean()
- AVG fBodyBodyGyroMag-std()
- AVG fBodyBodyGyroJerkMag-mean()
- AVG fBodyBodyGyroJerkMag-std()

### Cases
There are 180 cases in this dataset, one for each activity (6) performed by each subject (30).


















