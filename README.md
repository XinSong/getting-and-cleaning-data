#Getting and Cleaning Data Course Project

This repo is set up for the course project of `Getting and Cleaning Data Course Project`.

##Script
The script goes as followed:
 * Read the train/test data sets , and merge them
 * Extract the measurements on the mean and standard deviation for each measurement
 * Use descriptive activity names to name the activities in the data set
 * Label the data set with descriptive variable names
 * Create a tidy data set and write it in `tidy_data.txt`

The specific details are commented in the code, and it could be easily understood. 


##Raw Data Set Code Book

The features in raw data set come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

##Tidy Data Set Code Book
Tidy data set extracts only the measurements on the mean and standard deviation for each measurement from the raw data set, and in order to be more descriptive, the extracted variables were renamed:
 * Replace `-mean()` to `Mean`
 * Replace `-std()` to `Std`
 * Remove all punctuations, such as `-()`

**Variables in raw and tidy data set**

 Raw data set | Tidy data set
 -------------|--------------
 `subject` | `subject`
 `label` | `label`
 `tBodyAcc-mean()-X` | `tBodyAccMeanX`
 `tBodyAcc-mean()-Y` | `tBodyAccMeanY`
 `tBodyAcc-mean()-Z` | `tBodyAccMeanZ`
 `tBodyAcc-std()-X` | `tBodyAccStdX`
 `tBodyAcc-std()-Y` | `tBodyAccStdY`
 `tBodyAcc-std()-Z` | `tBodyAccStdZ`
 `tGravityAcc-mean()-X` | `tGravityAccMeanX`
 `tGravityAcc-mean()-Y` | `tGravityAccMeanY`
 `tGravityAcc-mean()-Z` | `tGravityAccMeanZ`
 `tGravityAcc-std()-X` | `tGravityAccStdX`
 `tGravityAcc-std()-Y` | `tGravityAccStdY`
 `tGravityAcc-std()-Z` | `tGravityAccStdZ`
 `tBodyAccJerk-mean()-X` | `tBodyAccJerkMeanX`
 `tBodyAccJerk-mean()-Y` | `tBodyAccJerkMeanY`
 `tBodyAccJerk-mean()-Z` | `tBodyAccJerkMeanZ`
 `tBodyAccJerk-std()-X` | `tBodyAccJerkStdX`
 `tBodyAccJerk-std()-Y` | `tBodyAccJerkStdY`
 `tBodyAccJerk-std()-Z` | `tBodyAccJerkStdZ`
 `tBodyGyro-mean()-X` | `tBodyGyroMeanX`
 `tBodyGyro-mean()-Y` | `tBodyGyroMeanY`
 `tBodyGyro-mean()-Z` | `tBodyGyroMeanZ`
 `tBodyGyro-std()-X` | `tBodyGyroStdX`
 `tBodyGyro-std()-Y` | `tBodyGyroStdY`
 `tBodyGyro-std()-Z` | `tBodyGyroStdZ`
 `tBodyGyroJerk-mean()-X` | `tBodyGyroJerkMeanX`
 `tBodyGyroJerk-mean()-Y` | `tBodyGyroJerkMeanY`
 `tBodyGyroJerk-mean()-Z` | `tBodyGyroJerkMeanZ`
 `tBodyGyroJerk-std()-X` | `tBodyGyroJerkStdX`
 `tBodyGyroJerk-std()-Y` | `tBodyGyroJerkStdY`
 `tBodyGyroJerk-std()-Z` | `tBodyGyroJerkStdZ`
 `tBodyAccMag-mean()` | `tBodyAccMagMean`
 `tBodyAccMag-std()` | `tBodyAccMagStd`
 `tGravityAccMag-mean()` | `tGravityAccMagMean`
 `tGravityAccMag-std()` | `tGravityAccMagStd`
 `tBodyAccJerkMag-mean()` | `tBodyAccJerkMagMean`
 `tBodyAccJerkMag-std()` | `tBodyAccJerkMagStd`
 `tBodyGyroMag-mean()` | `tBodyGyroMagMean`
 `tBodyGyroMag-std()` | `tBodyGyroMagStd`
 `tBodyGyroJerkMag-mean()` | `tBodyGyroJerkMagMean`
 `tBodyGyroJerkMag-std()` | `tBodyGyroJerkMagStd`
 `fBodyAcc-mean()-X` | `fBodyAccMeanX`
 `fBodyAcc-mean()-Y` | `fBodyAccMeanY`
 `fBodyAcc-mean()-Z` | `fBodyAccMeanZ`
 `fBodyAcc-std()-X` | `fBodyAccStdX`
 `fBodyAcc-std()-Y` | `fBodyAccStdY`
 `fBodyAcc-std()-Z` | `fBodyAccStdZ`
 `fBodyAccJerk-mean()-X` | `fBodyAccJerkMeanX`
 `fBodyAccJerk-mean()-Y` | `fBodyAccJerkMeanY`
 `fBodyAccJerk-mean()-Z` | `fBodyAccJerkMeanZ`
 `fBodyAccJerk-std()-X` | `fBodyAccJerkStdX`
 `fBodyAccJerk-std()-Y` | `fBodyAccJerkStdY`
 `fBodyAccJerk-std()-Z` | `fBodyAccJerkStdZ`
 `fBodyGyro-mean()-X` | `fBodyGyroMeanX`
 `fBodyGyro-mean()-Y` | `fBodyGyroMeanY`
 `fBodyGyro-mean()-Z` | `fBodyGyroMeanZ`
 `fBodyGyro-std()-X` | `fBodyGyroStdX`
 `fBodyGyro-std()-Y` | `fBodyGyroStdY`
 `fBodyGyro-std()-Z` | `fBodyGyroStdZ`
 `fBodyAccMag-mean()` | `fBodyAccMagMean`
 `fBodyAccMag-std()` | `fBodyAccMagStd`
 `fBodyBodyAccJerkMag-mean()` | `fBodyBodyAccJerkMagMean`
 `fBodyBodyAccJerkMag-std()` | `fBodyBodyAccJerkMagStd`
 `fBodyBodyGyroMag-mean()` | `fBodyBodyGyroMagMean`
 `fBodyBodyGyroMag-std()` | `fBodyBodyGyroMagStd`
 `fBodyBodyGyroJerkMag-mean()` | `fBodyBodyGyroJerkMagMean`
 `fBodyBodyGyroJerkMag-std()` | `fBodyBodyGyroJerkMagStd`
