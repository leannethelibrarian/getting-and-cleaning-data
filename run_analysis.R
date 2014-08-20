## Getting & Cleaning Data - Final Project
## Please consult README.md before running this script. You need to download the 
## source data first!

## Load the primary measurment data files, X_train & X_test 
trainRaw <- read.table("./UCI HAR Dataset/train/X_train.txt")
testRaw <- read.table("./UCI HAR Dataset/test/X_test.txt")

## Give the two data files descriptive variable names from features.txt (step 4)
## (ideally I would have made these names even more descriptive, but because the
## descriptions of the variable contents are so complex, in this case it wouldn't
## really have helped all that much! So I just used the names from the source data.)
featureNames <- read.table("./UCI HAR Dataset/features.txt")
names(trainRaw) <- featureNames[,2]
names(testRaw) <- featureNames[,2]

## Load the subject and activity data columns
trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt")
testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Bind the subject and activity data to the measurement data, label the new columns.
trainTidy <- cbind(trainActivities, trainRaw)
names(trainTidy) [1] <- "activity"
trainTidy <- cbind(trainSubjects, trainTidy)
names(trainTidy) [1] <- "subject"
testTidy <- cbind(testActivities, testRaw)
names(testTidy) [1] <- "activity"
testTidy <- cbind(testSubjects, testTidy)
names(testTidy) [1] <- "subject"

## Bind the test and the training data frames together (step 1)
tidyData <- rbind(trainTidy,testTidy)

## Replace the activity codes with descriptive activity names. (step 3)
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
tidyData$activity <- factor(tidyData$activity, levels = activityLabels$V1, labels = activityLabels$V2)

## Select only the needed columns (mean & standard deviation) (step 2)
myvars <- c("subject", "activity", grep("mean\\(\\)|std\\(\\)", names(tidyData), value=TRUE))
tidyData <- tidyData[myvars]

## Save the tidy dataset
write.table(tidyData, file="tidydata.txt", row.names.=FALSE)

## Create a second tidy dataset by averaging each variable for each activity
## and each subject (step 5)
tidyDataAvg <- aggregate(tidyData[3:68], by = list(tidyData[,1], tidyData[,2]), mean)
names(tidyDataAvg) <- c("subject", "activity", paste("AVG", names(tidyData)[3:68]))
tidyDataAvg <- tidyDataAvg[order(tidyDataAvg[,1, drop=FALSE]),]

## Save the second tidy dataset
write.table(tidyDataAvg, file="tidydataavg.txt", row.names=FALSE)

