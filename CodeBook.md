#CodeBook for Tidy Data Set
===================================

##Study Design
The Tidy Data Set is based on the [*Human Activity Recognition Using Smartphones 
Data Set*] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones),
the measurements of this data set are obtained in the following way,


>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.[1]

##Variables


###General information concerning all variables
The variables in the Tidy Data Set are, of course, based on the variables (or 'features') in the *Human Activity Recognition Using Smartphones 
Data Set*. Therefore, the original remarks about these features are included here:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a [Fast Fourier Transform (FFT)] (http://en.wikipedia.org/wiki/Fast_Fourier_transform#Definition_and_speed) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

It should be noted that the variables in the Tidy Data Set are a calculations of the mean for
all the (mean and standard deviation) measurements of the different variables for each activity and for each subject. 
The units for the different variable are, however, the same as in the original data set.
So variables with a 't-' prefix denote time and variables with an 'f-' prefix denote frequency (applying a Fast Fourier Transform to time).


###Specific variables
**activity**

WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

**subject**

Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

**tBodyAccmeanX**, **tBodyAccmeanY**, **tBodyAccmeanZ**,
**tBodyAccstdX**, **tBodyAccstdY**, **tBodyAccstdZ**

tBodyAccmeanX	Min.   :0.2216  
14	 	tBodyAccmeanX	1st Qu.:0.2712  
15	 	tBodyAccmeanX	Median :0.2770  
16	 	tBodyAccmeanX	Mean   :0.2743  
17	 	tBodyAccmeanX	3rd Qu.:0.2800  
18	 	tBodyAccmeanX	Max.   :0.3015  

**tGravityAccmeanX**, **tGravityAccmeanY**, **tGravityAccmeanZ**,
**tGravityAccstdX**, **tGravityAccstdY**, **tGravityAccstdZ**

|   |tBodyAccmeanX    |tBodyAccmeanY       |tBodyAccmeanZ      | tBodyAccstdX     | tBodyAccstdY      | tBodyAccstdZ     |
|:--|:----------------|:-------------------|:------------------|:-----------------|:------------------|:-----------------|
|   |Min.   :0.2216   |Min.   :-0.040514   |Min.   :-0.15251   |Min.   :-0.9961   |Min.   :-0.99024   |Min.   :-0.9877   |
|   |1st Qu.:0.2712   |1st Qu.:-0.020022   |1st Qu.:-0.11207   |1st Qu.:-0.9799   |1st Qu.:-0.94205   |1st Qu.:-0.9498   |
|   |Median :0.2770   |Median :-0.017262   |Median :-0.10819   |Median :-0.7526   |Median :-0.50897   |Median :-0.6518   |
|   |Mean   :0.2743   |Mean   :-0.017876   |Mean   :-0.10916   |Mean   :-0.5577   |Mean   :-0.46046   |Mean   :-0.5756   |
|   |3rd Qu.:0.2800   |3rd Qu.:-0.014936   |3rd Qu.:-0.10443   |3rd Qu.:-0.1984   |3rd Qu.:-0.03077   |3rd Qu.:-0.2306   |
|   |Max.   :0.3015   |Max.   :-0.001308   |Max.   :-0.07538   |Max.   : 0.6269   |Max.   : 0.61694   |Max.   : 0.6090   |


**tBodyAccJerkmeanX**, **tBodyAccJerkmeanY**, **tBodyAccJerkmeanZ**,
**tBodyAccJerkstdX**,**tBodyAccJerkstdY**, **tBodyAccJerkstdZ**

**tBodyGyromeanX**, **tBodyGyromeanY**, **tBodyGyromeanZ**,
**tBodyGyrostdX**, **tBodyGyrostdY**, **tBodyGyrostdZ**

**tBodyGyroJerkmeanX**, **tBodyGyroJerkmeanY**, **tBodyGyroJerkmeanZ**,
**tBodyGyroJerkstdX**, **tBodyGyroJerkstdY**, **tBodyGyroJerkstdZ**

**tBodyAccMagmean**, **tBodyAccMagstd**

**tGravityAccMagmean**, **tGravityAccMagstd**

**tBodyAccJerkMagmean**, **tBodyAccJerkMagstd**

**tBodyGyroMagmean**, **tBodyGyroMagstd**

**tBodyGyroJerkMagmean**, **tBodyGyroJerkMagstd**

**fBodyAccmeanX**, **fBodyAccmeanY**, **fBodyAccmeanZ**,
**fBodyAccstdX**, **fBodyAccstdY**, **fBodyAccstdZ**

**fBodyAccmeanFreqX**, **fBodyAccmeanFreqY**, **fBodyAccmeanFreqZ**

**fBodyAccJerkmeanX**, **fBodyAccJerkmeanY**, **fBodyAccJerkmeanZ**,
**fBodyAccJerkstdX**, **fBodyAccJerkstdY**, **fBodyAccJerkstdZ**

**fBodyAccJerkmeanFreqX**, **fBodyAccJerkmeanFreqY**, **fBodyAccJerkmeanFreqZ**

**fBodyGyromeanX**, **fBodyGyromeanY**, **fBodyGyromeanZ**,
**fBodyGyrostdX**, **fBodyGyrostdY**,**fBodyGyrostdZ**

**fBodyGyromeanFreqX**, **fBodyGyromeanFreqY**, **fBodyGyromeanFreqZ**

**fBodyAccMagmean**, **fBodyAccMagstd**, **fBodyAccMagmeanFreq**

**fBodyBodyAccJerkMagmean**, **fBodyBodyAccJerkMagstd**,  **fBodyBodyAccJerkMagmeanFreq**

**fBodyBodyGyroMagmean**, **fBodyBodyGyroMagstd**, **fBodyBodyGyroMagmeanFreq**

**fBodyBodyGyroJerkMagmean**, **fBodyBodyGyroJerkMagstd**, **fBodyBodyGyroJerkMagmeanFreq**

**angletBodyAccMeangravity**, **angletBodyAccJerkMeangravityMean**, **angletBodyGyroMeangravityMean**, **angletBodyGyroJerkMeangravityMean**, **angleXgravityMean**, **angleYgravityMean**, **angleZgravityMean**



##References
[1]Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

