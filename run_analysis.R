# run_analysis.R
# This script creates a summarized tidy data consistent with the requirements
# of the Course Project assignment for Getting & Cleaning Data.
#
# Usage : source(run_analysis.R)
#
# NOTES :
#  * This script makes assumptions about the path to the data being used.
#    See 'LIST OF FILES' below to view/change the paths used by the script.
#  * The final summarized tidy data set is stored in a variable 'summarizedData'.
#    Alternatively, you can use the writeSummary() function to output the table
#    to a file of your choice.
#  * If you are reviewing this script for grading purposes, please note that
#    that the script has been structured relative to the project instructions.
#    See comments in the script for indications of what happens with each step.
#  * This script requires the 'dplyr' library in R to run.

library(dplyr)

# LIST OF FILES
# Files used by this script; adjust paths as necessary for your environment.
TEST_X          <- "UCI-HAR-data/test/X_test.txt"
TEST_SUBJECT    <- "UCI-HAR-data/test/subject_test.txt"
TEST_ACTIVITY   <- "UCI-HAR-data/test/y_test.txt"
TRAIN_X         <- "UCI-HAR-data/train/X_train.txt"
TRAIN_SUBJECT   <- "UCI-HAR-data/train/subject_train.txt"
TRAIN_ACTIVITY  <- "UCI-HAR-data/train/y_train.txt"

# Field names are read from the UCI features.txt and massaged so that
# they are legal column names in R.
fieldNames <- read.table('UCI-HAR-data/features.txt')[,2]
fieldNames <- gsub("\\(|\\)", "", fieldNames)
fieldNames <- gsub(",|-", "_", fieldNames)

# readData is a helper function which allows for parameterized loading
# of the test and train data sets.
readData <- function (dataPath, subjectPath, activityPath) {
    data <- read.table(dataPath)
    colnames(data) <- fieldNames
    subjects <- read.table(subjectPath)
    names(subjects) <- "SubjectId"
    subjects$SubjectId <- factor(subjects$SubjectId)
    activities <- read.table(activityPath)
    names(activities) <- "Activity"
    cbind(data, subjects, activities)
}

## Step 1
## Merge the training and the test sets to create one data set.
testData <- readData(TEST_X, TEST_SUBJECT, TEST_ACTIVITY) 
trainData <- readData(TRAIN_X, TRAIN_SUBJECT, TRAIN_ACTIVITY)
completeData <- rbind(testData, trainData)


## Step 2
## Extract only the measurements on the mean and standard deviation 
## for each measurement while retaining the Activity and SubjectId fields.
extractedData <- subset(completeData, select = grepl("_mean|_std|Activity|SubjectId", names(completeData)))

## Step 3
## Update activity values to use labels instead of IDs to be more descriptive.
activityLabels <- read.table('UCI-HAR-data/activity_labels.txt')
extractedData$Activity <- activityLabels[extractedData$Activity,]$V2

## Step 4
## Label the data set with descriptive variable names. 
names(extractedData) <- gsub("Acc", "Acceleration", names(extractedData))
names(extractedData) <- gsub("^t", "Time", names(extractedData))
names(extractedData) <- gsub("^f", "Frequency", names(extractedData))
names(extractedData) <- gsub("_std", "StdDev", names(extractedData))
names(extractedData) <- gsub("_mean", "Mean", names(extractedData))

## Step 5
## Create a summarized tidy data set with the average for each variable for
## each activity and subject.
summarizedData <- tbl_df(extractedData) %>%
    group_by(SubjectId, Activity) %>%
    summarise_each(funs(mean))

## writeSummary can be used to write the final data set to the specified path.
writeSummary <- function(path) {
    write.table(summarizedData, path, row.name = FALSE)
}