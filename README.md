#Cleaning and Getting Data Course Project

Objective: Run an analysis on the Human Activity Recognition from Smartphone Dataset to create a tidy data set

Step 1: Download the zip file from the course submission page 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Step 2: Unzip the file and set the file path ./UCI HAR Dataset as the working directory in R

Step 3:Run the run_analysis.R script in the set working diretory to achieve the output result of tidydata.txt

##What the run_analysis.R does in sequence:
1.Merges the training and the test sets to create one data set.
- reads in all train data then cbind them
- reads in all test data then cbind them
- rbind merged train and test data to form one large dataset

2.Reads in the activity and features names

3.Rename the column names of the merged data set with descriptive feature/variable names
- use gsub to substitute string containing Acc to Acceleration to better describe the feautres

4.Uses descriptive activity names to name the activities in the merged data set.
- convert activity column into factor and renaming the levels

5.Extracts only the measurements on the mean and standard deviation for each measurement. 
- use grep1 and regular expression to extract the column names with mean() and std() and subject_id and activity

6.From the merged data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- use melt function to create id variables: subject_id and activity and others to be measured variables
- use dcast function to find the average of each variabls for each activity and each subject 

##Files that will be read in R:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.


