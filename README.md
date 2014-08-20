## README

## About this project
This is the Final Project for the course "Getting & Cleaning Data", part of the Data Science specialization offered by Coursera and John Hopkins University. This project was completed on August 20, 2014.

The assignment is to obtain the "Human Activity Recognition Using Smartphones Dataset" and to tidy it and process it for further analysis. 

The github repository http://github.com/leannethelibrarian/getting-and-cleaning-data contains a script, run_analysis.R, which can be used to perform the operations necessary to tidy and process the dataset and to save two tidied files to your hard drive.

## Utilizing this tool

### 1. Obtaining the source data
First you must have the source data saved in your working directory. The source data files must be, as provided by the source, contained within the folder "UCI HAR Dataset" in your working directory.

The script does not automatically go and download the data because it is acknowledged that the location of the source data could change over time.

As of the writing of this README file (August 20, 2014), the source data was available from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Further information about the source data was available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### 2. Running the script
Once you have downloaded the source data, you are able to run the run_analysis.R script. The script will load various parts of the source data into R and combine, rearrange, and tidy these data. The results of this will be saved as **tidydata.txt** in your working directory.

The script will then calculate the means for each subject and activity, for each of the variables included in tidydata.txt. This result is then saved in your working directory as **tidydataavg.txt**.

The specific steps the script performs include:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The run_analysis.R script is well documented with comments to describe the specific actions being performed on the data. Each of the above 5 steps is indicated in the comments of the script (since they are not necessarily performed in numeric order).

### 3. Understanding the output
The contents of the two output datasets (tidydata.txt and tidydataavg.txt) are well described in the accompanying file **CodeBook.md**. Please consult that file before utilizing these data files.

## Credits
Many thanks to Jorge L. Reyes-Ortiz, Davide Anguita, Allessandro Ghio, and Luca Oneto for making their dataset available to others to use.
