Project-for-Getting-and-Cleaning-Data
=====================================

This data analysis is analyzing data of the accelerometers from the Samsung Galaxy S smartphone for a project of Getting and Cleaning Data. 

According to READ_ME.txt from the original data file "UCI HAR Dataset", we get the description of this experiment as following:"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

Project requirement:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

How my script works:
1. Use append() and Merge() functions to integrate the raw data into one dataset.
2. Use library(reshape) and melt() function To make a tidy data set.
3. Rename all the numbers in VO column(measurement) to descriptive activity names.
4. Use tapply() function to extract only the measurements on the mean and standard deviation for each measurement.
5. Use append() and Merge() functions to integrate the raw data (including subject data) into the second dataset.
6. Use library(reshape) and melt() function To make a tidy data set.
7. Rename all the numbers in VO column(measurement) to descriptive activity names.
8. Use tapply() function to extract the average of each variable for each activity and each subject. 

=====================================


