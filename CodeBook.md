# Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

We are interested in the mean and standard deviation of each measurement.

The variable "activity"" contains the performed activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) and the variable "subject"" contains an ID of the person performing the activity.

Hence, the following 68 variables of the raw data are of interest (training and test sets):

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyAccMag-mean()
- tGravityAccMag-mean()
- tBodyAccJerkMag-mean()
- tBodyGyroMag-mean()
- tBodyGyroJerkMag-mean()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyAccMag-mean()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroJerkMag-mean()
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-std()
- tGravityAccMag-std()
- tBodyAccJerkMag-std()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-std()
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-std()
- activity
- subject

The observations are grouped by activity and subject. The resulting tidy data set contains the following variables with the mean of the measurements from before:

- activity
- subject
- tbodyaccmeanx
- tbodyaccmeany
- tbodyaccmeanz
- tgravityaccmeanx
- tgravityaccmeany
- tgravityaccmeanz
- tbodyaccjerkmeanx
- tbodyaccjerkmeany
- tbodyaccjerkmeanz
- tbodygyromeanx
- tbodygyromeany
- tbodygyromeanz
- tbodygyrojerkmeanx
- tbodygyrojerkmeany
- tbodygyrojerkmeanz
- tbodyaccmagmean
- tgravityaccmagmean
- tbodyaccjerkmagmean
- tbodygyromagmean
- tbodygyrojerkmagmean
- fbodyaccmeanx
- fbodyaccmeany
- fbodyaccmeanz
- fbodyaccjerkmeanx
- fbodyaccjerkmeany
- fbodyaccjerkmeanz
- fbodygyromeanx
- fbodygyromeany
- fbodygyromeanz
- fbodyaccmagmean
- fbodybodyaccjerkmagmean
- fbodybodygyromagmean
- fbodybodygyrojerkmagmean
- tbodyaccstdx
- tbodyaccstdy
- tbodyaccstdz
- tgravityaccstdx
- tgravityaccstdy
- tgravityaccstdz
- tbodyaccjerkstdx
- tbodyaccjerkstdy
- tbodyaccjerkstdz
- tbodygyrostdx
- tbodygyrostdy
- tbodygyrostdz
- tbodygyrojerkstdx
- tbodygyrojerkstdy
- tbodygyrojerkstdz
- tbodyaccmagstd
- tgravityaccmagstd
- tbodyaccjerkmagstd
- tbodygyromagstd
- tbodygyrojerkmagstd
- fbodyaccstdx
- fbodyaccstdy
- fbodyaccstdz
- fbodyaccjerkstdx
- fbodyaccjerkstdy
- fbodyaccjerkstdz
- fbodygyrostdx
- fbodygyrostdy
- fbodygyrostdz
- fbodyaccmagstd
- fbodybodyaccjerkmagstd
- fbodybodygyromagstd
- fbodybodygyrojerkmagstd
