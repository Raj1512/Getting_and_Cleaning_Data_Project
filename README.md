# Getting_and_Cleaning_Data_Project
Getting and Cleaning Data course project from Coursera.

## Description of the Project:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 You should create one R script called run_analysis.R that does the following. 

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 

    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

## run_analysis.R

This clean up script (run_analysis.R) does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive and detailed activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Running the script

To run the script, source `run_analysis.R`. After running, you will see the following output as the script works:

 "run_analysis.R"
* "GetData-013 course project script"
* "Author : Raj Kumar"
* "Pre work: "
* "Get the data from the zip file, so download contents"
* "from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
* "Then, gather the relevant files into a folder to be named UCI HAR Dataset in your working directory."
* "1. Read the data files into R:"
* "Subject:"
* "2. Merge all that data into one dataset"
* "3. Name the measurement columns after the feature names, and give names to the id columns"
* "4. Create a new data frame whose measurement columns contain only mean and st. dev features"
* "more housekeeping, remove newDatafrme"
* "5. Trim the rows to the 180 needed to show mean values for each subject-activity pair"
* "6. Rename tidyframe data and output the data to Samsung_Data.txt"
* "end of script, please see the cleaned data file Samsung_Data.txt in the working directory"

## Process

1. For both the test and train datasets, produce an interim dataset:
    1. Extract the mean and standard deviation features (listed in CodeBook.md, section 'Extracted Features'). This is the `values` table.
    2. Get the list of activities.
    3. Put the activity *labels* (not numbers) into the `values` table.
    4. Get the list of subjects.
    5. Put the subject IDs into the `values` table.
2. Join the test and train interim datasets.
3. Put each variable on its own row.
4. Rejoin the entire table, keying on subject/acitivity pairs, applying the mean function to each vector of values in each subject/activity pair. This is the clean dataset.
5. Write the clean dataset to disk.

## Cleaned Data

The resulting clean dataset is in this repository at: `data/Samsung_Data.txt`. It contains one row for each subject/activity pair and columns for subject, activity, and each feature that was a mean or standard deviation from the original dataset.

## Notes

