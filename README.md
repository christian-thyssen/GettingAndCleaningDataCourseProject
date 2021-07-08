# Summary
This project does the following:

- We obtain smartphone data of subjects performing different activities (see "The Raw Data").
- We select certain measurements and group them by activity and subject (see "Getting and Cleaning the Raw Data").
- The resulting tidy data set containing the mean of each group is provided (see "The Tidy Data Set" and "The Code Book").

# The Raw Data
We used raw data that can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The data can also be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The experiments generating the data have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

# The Tidy Data Set
The tidy data set "tidy.txt" is provided as space-delimited file.
Its content is described in the code book.

# The Code Book
The code book "CodeBook.md" describes the variables in the tidy data set.

# Getting and Cleaning the Raw Data
All steps needed to get and clean the raw data are described in the R script "run_analysis.R".
The basic steps are the following:

0. Download the raw data.
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
