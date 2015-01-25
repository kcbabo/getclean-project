## Overview
This repository contains the course project for the Coursera Getting and Cleaning Data course.  There are three files in this repository:
* [Readme.md](https://github.com/kcbabo/getclean-project/blob/master/README.md) : this file.  Contains overview information on what's in the repository and how to use it.
* [run_analysis.R](https://github.com/kcbabo/getclean-project/blob/master/run_analysis.R) : the R script which takes raw data from the HAR project as input and produces a summarized tidy state based on requirements set forth in the course project.
* [Codebook.md](https://github.com/kcbabo/getclean-project/blob/master/CodeBook.md) : the codebook containing information on the source data and its origins.

## Running the Project
The script is setup so that simply sourcing the R script within R will pull in the necessary data, perform processing on that data, and create a data table containing the output called `summarizedData`.  After sourcing the script, you can either print the value of `summarizedData` or use the `writeSummary()` function to write the table to an output file.  

### Option 1 ###
```
source('run_analysis.R')
print(summarizedData)
```

### Option 2 ###
```
source('run_analysis.R')
writeSummary('summarizedData.txt')
```
The script assumes that the working directory within R is set to the directory where the HAR data is located with a stucture identical to the original raw data set.  If your environment is different, paths within the script are defined as variables and can be changed to match your envrionment (see [LIST OF FILES] (https://github.com/kcbabo/getclean-project/blob/master/run_analysis.R#L20) in the R script source).

## What Happens
The [run_analysis.R](https://github.com/kcbabo/getclean-project/blob/master/run_analysis.R) script has documentation on all the steps involved, but a brief summary follows:
* Variable names are read from the UCI-HAR-data/features.txt file and changed to be valid names within R.
* The test and training data sets are read into data tables and combined together.
* Only variables related to the standard deviation and mean of measurements are extracted into a new table. This is done by capturing all variables with "_mean" or "_std" in their name.
* Activity IDs are replaced with their more descriptive activity labels via the UCI-HAR-data/activity_labels.txt table.
* Column names are expanded to become more descriptive.
* The data are summarized by grouping into subject and activity and providing the average of all measurements.



