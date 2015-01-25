
## Study Design
The data used by this project originated from the Human Activity Recognition Using Smartphones Data Set.  Attribution for this project is
```
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
```
All information related to the collection and processing of data in the study is available through the following project site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The actual raw data used for the data submitted along with this project is a subset of the above and is avaialble directly through the Coursera Getting and Cleaning Data course resources page here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following attributes of the raw data have been changed while implementing the Course course project:
* The subject, activity, and measurements data for both the training and test data sets have been combined into a single data set.
* All variables unrelated to the standard deviation and mean of measurements were removed.
* Column names have been updated to be more readable.
* Activities are identified by their descriptive name instead of their numeric code identifier.
* Summary data reflecting the average of the mean and standard deviation of included measurements has been exported based on the above.

For more details on the files used and the steps involved in processing, please see comments in the [run_analysis.R ](https://github.com/kcbabo/getclean-project/blob/master/run_analysis.R) script used to process the raw data.

## Code Book
The following tables include information on the variables included in the exported data.    The first table includes variables there were imported into the data set from other sources within the HAR data with information on their source and description.  

Variable | Source | Description
---------|--------|-------
subjectId | subject_test.txt and subject_train.txt | The set of subject IDs was column bound to the list of test and training data to associate a subject to a given set of measurements.
activity | y_test and y_train.txt | The ID for a given measurement was correlated to the measurement data set and the ID was translated to it descriptive name via the table in activity_labels.txt.  Valid values are (1 - WALKING, 2 - WALKING_UPSTAIRS, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 - LAYING).

The second table contains variables source directly from the raw training and test data sets (X_test.txt and X_train.txt) where the only change is the name of the variable to make it more descriptive.  For a detailed description of these variables (including units involved), please consult the features.txt file in the original HAR data set reference in Study Design.


Variable | Original Name
---------|--------------
TimeBodyAccelerationMean_X | tBodyAcc-mean()-X
TimeBodyAccelerationMean_Y | tBodyAcc-mean()-Y
TimeBodyAccelerationMean_Z | tBodyAcc-mean()-Z
TimeBodyAccelerationStdDev_X | tBodyAcc-std()-X
TimeBodyAccelerationStdDev_Y | tBodyAcc-std()-Y
TimeBodyAccelerationStdDev_Z | tBodyAcc-std()-Z
TimeGravityAccelerationMean_X | tGravityAcc-mean()-X
TimeGravityAccelerationMean_Y | tGravityAcc-mean()-Y
TimeGravityAccelerationMean_Z | tGravityAcc-mean()-Z
TimeGravityAccelerationStdDev_X | tGravityAcc-std()-X
TimeGravityAccelerationStdDev_Y | tGravityAcc-std()-Y
TimeGravityAccelerationStdDev_Z | tGravityAcc-std()-Z
TimeBodyAccelerationJerkMean_X | tBodyAccJerk-mean()-X
TimeBodyAccelerationJerkMean_Y | tBodyAccJerk-mean()-Y
TimeBodyAccelerationJerkMean_Z | tBodyAccJerk-mean()-Z
TimeBodyAccelerationJerkStdDev_X | tBodyAccJerk-std()-X
TimeBodyAccelerationJerkStdDev_Y | tBodyAccJerk-std()-Y
TimeBodyAccelerationJerkStdDev_Z | tBodyAccJerk-std()-Z
TimeBodyGyroMean_X | tBodyGyro-mean()-X
TimeBodyGyroMean_Y | tBodyGyro-mean()-Y
TimeBodyGyroMean_Z | tBodyGyro-mean()-Z
TimeBodyGyroStdDev_X | tBodyGyro-std()-X
TimeBodyGyroStdDev_Y | tBodyGyro-std()-Y
TimeBodyGyroStdDev_Z | tBodyGyro-std()-Z
TimeBodyGyroJerkMean_X | tBodyGyroJerk-mean()-X
TimeBodyGyroJerkMean_Y | tBodyGyroJerk-mean()-Y
TimeBodyGyroJerkMean_Z | tBodyGyroJerk-mean()-Z
TimeBodyGyroJerkStdDev_X | tBodyGyroJerk-std()-X
TimeBodyGyroJerkStdDev_Y | tBodyGyroJerk-std()-Y
TimeBodyGyroJerkStdDev_Z | tBodyGyroJerk-std()-Z
TimeBodyAccelerationMagMean | tBodyAccMag-mean()
TimeBodyAccelerationMagStdDev | tBodyAccMag-std()
TimeGravityAccelerationMagMean | tGravityAccMag-mean()
TimeGravityAccelerationMagStdDev | tGravityAccMag-std()
TimeBodyAccelerationJerkMagMean | tBodyAccJerkMag-mean()
TimeBodyAccelerationJerkMagStdDev | tBodyAccJerkMag-std()
TimeBodyGyroMagMean | tBodyGyroMag-mean()
TimeBodyGyroMagStdDev | tBodyGyroMag-std()
TimeBodyGyroJerkMagMean | tBodyGyroJerkMag-mean()
TimeBodyGyroJerkMagStdDev | tBodyGyroJerkMag-std()
FrequencyBodyAccelerationMean_X | fBodyAcc-mean()-X
FrequencyBodyAccelerationMean_Y | fBodyAcc-mean()-Y
FrequencyBodyAccelerationMean_Z | fBodyAcc-mean()-Z
FrequencyBodyAccelerationStdDev_X | fBodyAcc-std()-X
FrequencyBodyAccelerationStdDev_Y | fBodyAcc-std()-Y
FrequencyBodyAccelerationStdDev_Z | fBodyAcc-std()-Z
FrequencyBodyAccelerationMeanFreq_X | fBodyAcc-meanFreq()-X
FrequencyBodyAccelerationMeanFreq_Y | fBodyAcc-meanFreq()-Y
FrequencyBodyAccelerationMeanFreq_Z | fBodyAcc-meanFreq()-Z
FrequencyBodyAccelerationJerkMean_X | fBodyAccJerk-mean()-X
FrequencyBodyAccelerationJerkMean_Y | fBodyAccJerk-mean()-Y
FrequencyBodyAccelerationJerkMean_Z | fBodyAccJerk-mean()-Z
FrequencyBodyAccelerationJerkStdDev_X | fBodyAccJerk-std()-X
FrequencyBodyAccelerationJerkStdDev_Y | fBodyAccJerk-std()-Y
FrequencyBodyAccelerationJerkStdDev_Z | fBodyAccJerk-std()-Z
FrequencyBodyAccelerationJerkMeanFreq_X | fBodyAccJerk-meanFreq()-X
FrequencyBodyAccelerationJerkMeanFreq_Y | fBodyAccJerk-meanFreq()-Y
FrequencyBodyAccelerationJerkMeanFreq_Z | fBodyAccJerk-meanFreq()-Z
FrequencyBodyGyroMean_X | fBodyGyro-mean()-X
FrequencyBodyGyroMean_Y | fBodyGyro-mean()-Y
FrequencyBodyGyroMean_Z | fBodyGyro-mean()-Z  
FrequencyBodyGyroStdDev_X | fBodyGyro-std()-X
FrequencyBodyGyroStdDev_Y | fBodyGyro-std()-Y
FrequencyBodyGyroStdDev_Z | fBodyGyro-std()-Z
FrequencyBodyGyroMeanFreq_X | fBodyGyro-meanFreq()-X
FrequencyBodyGyroMeanFreq_Y | fBodyGyro-meanFreq()-Y
FrequencyBodyGyroMeanFreq_Z | fBodyGyro-meanFreq()-Z
FrequencyBodyAccelerationMagMean | fBodyAccMag-mean()
FrequencyBodyAccelerationMagStdDev | fBodyAccMag-std()
FrequencyBodyAccelerationMagMeanFreq | fBodyAccMag-meanFreq()
FrequencyBodyBodyAccelerationJerkMagMean | fBodyBodyAccJerkMag-mean()
FrequencyBodyBodyAccelerationJerkMagStdDev | fBodyBodyAccJerkMag-std()
FrequencyBodyBodyAccelerationJerkMagMeanFreq | fBodyBodyAccJerkMag-meanFreq()
FrequencyBodyBodyGyroMagMean | fBodyBodyGyroMag-mean()
FrequencyBodyBodyGyroMagStdDev | fBodyBodyGyroMag-std()
FrequencyBodyBodyGyroMagMeanFreq | fBodyBodyGyroMag-meanFreq()
FrequencyBodyBodyGyroJerkMagMean | fBodyBodyGyroJerkMag-mean()
FrequencyBodyBodyGyroJerkMagStdDev | fBodyBodyGyroJerkMag-std()
FrequencyBodyBodyGyroJerkMagMeanFreq | fBodyBodyGyroJerkMag-meanFreq()
