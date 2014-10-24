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


###Summary statistics for variables in the tidy data set
**activity**

The activity variable denotes the activity the subject undertook while the measurement was being made.
Its values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

**subject**

Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

**tBodyAccmeanX**, **tBodyAccmeanY**, **tBodyAccmeanZ**,
**tBodyAccstdX**, **tBodyAccstdY**, **tBodyAccstdZ**

|   |tBodyAccmeanX    |tBodyAccmeanY       |tBodyAccmeanZ      | tBodyAccstdX     | tBodyAccstdY      | tBodyAccstdZ     |
|:--|:----------------|:-------------------|:------------------|:-----------------|:------------------|:-----------------|
|   |Min.   :0.2216   |Min.   :-0.040514   |Min.   :-0.15251   |Min.   :-0.9961   |Min.   :-0.99024   |Min.   :-0.9877   |
|   |1st Qu.:0.2712   |1st Qu.:-0.020022   |1st Qu.:-0.11207   |1st Qu.:-0.9799   |1st Qu.:-0.94205   |1st Qu.:-0.9498   |
|   |Median :0.2770   |Median :-0.017262   |Median :-0.10819   |Median :-0.7526   |Median :-0.50897   |Median :-0.6518   |
|   |Mean   :0.2743   |Mean   :-0.017876   |Mean   :-0.10916   |Mean   :-0.5577   |Mean   :-0.46046   |Mean   :-0.5756   |
|   |3rd Qu.:0.2800   |3rd Qu.:-0.014936   |3rd Qu.:-0.10443   |3rd Qu.:-0.1984   |3rd Qu.:-0.03077   |3rd Qu.:-0.2306   |
|   |Max.   :0.3015   |Max.   :-0.001308   |Max.   :-0.07538   |Max.   : 0.6269   |Max.   : 0.61694   |Max.   : 0.6090   |


**tGravityAccmeanX**, **tGravityAccmeanY**, **tGravityAccmeanZ**,
**tGravityAccstdX**, **tGravityAccstdY**, **tGravityAccstdZ**

|   |tGravityAccmeanX  |tGravityAccmeanY   |tGravityAccmeanZ   |tGravityAccstdX   |tGravityAccstdY   |tGravityAccstdZ   |
|:--|:-----------------|:------------------|:------------------|:-----------------|:-----------------|:-----------------|
|   |Min.   :-0.6800   |Min.   :-0.47989   |Min.   :-0.49509   |Min.   :-0.9968   |Min.   :-0.9942   |Min.   :-0.9910   |
|   |1st Qu.: 0.8376   |1st Qu.:-0.23319   |1st Qu.:-0.11726   |1st Qu.:-0.9825   |1st Qu.:-0.9711   |1st Qu.:-0.9605   |
|   |Median : 0.9208   |Median :-0.12782   |Median : 0.02384   |Median :-0.9695   |Median :-0.9590   |Median :-0.9450   |
|   |Mean   : 0.6975   |Mean   :-0.01621   |Mean   : 0.07413   |Mean   :-0.9638   |Mean   :-0.9524   |Mean   :-0.9364   |
|   |3rd Qu.: 0.9425   |3rd Qu.: 0.08773   |3rd Qu.: 0.14946   |3rd Qu.:-0.9509   |3rd Qu.:-0.9370   |3rd Qu.:-0.9180   |
|   |Max.   : 0.9745   |Max.   : 0.95659   |Max.   : 0.95787   |Max.   :-0.8296   |Max.   :-0.6436   |Max.   :-0.6102   |


**tBodyAccJerkmeanX**, **tBodyAccJerkmeanY**, **tBodyAccJerkmeanZ**,
**tBodyAccJerkstdX**,**tBodyAccJerkstdY**, **tBodyAccJerkstdZ**

|   |tBodyAccJerkmeanX |tBodyAccJerkmeanY    |tBodyAccJerkmeanZ   |tBodyAccJerkstdX  |tBodyAccJerkstdY  |tBodyAccJerkstdZ   |
|:--|:-----------------|:--------------------|:-------------------|:-----------------|:-----------------|:------------------|
|   |Min.   :0.04269   |Min.   :-0.0386872   |Min.   :-0.067458   |Min.   :-0.9946   |Min.   :-0.9895   |Min.   :-0.99329   |
|   |1st Qu.:0.07396   |1st Qu.: 0.0004664   |1st Qu.:-0.010601   |1st Qu.:-0.9832   |1st Qu.:-0.9724   |1st Qu.:-0.98266   |
|   |Median :0.07640   |Median : 0.0094698   |Median :-0.003861   |Median :-0.8104   |Median :-0.7756   |Median :-0.88366   |
|   |Mean   :0.07947   |Mean   : 0.0075652   |Mean   :-0.004953   |Mean   :-0.5949   |Mean   :-0.5654   |Mean   :-0.73596   |
|   |3rd Qu.:0.08330   |3rd Qu.: 0.0134008   |3rd Qu.: 0.001958   |3rd Qu.:-0.2233   |3rd Qu.:-0.1483   |3rd Qu.:-0.51212   |
|   |Max.   :0.13019   |Max.   : 0.0568186   |Max.   : 0.038053   |Max.   : 0.5443   |Max.   : 0.3553   |Max.   : 0.03102   |


**tBodyGyromeanX**, **tBodyGyromeanY**, **tBodyGyromeanZ**,
**tBodyGyrostdX**, **tBodyGyrostdY**, **tBodyGyrostdZ**

|   |tBodyGyromeanX     |tBodyGyromeanY     |tBodyGyromeanZ     |tBodyGyrostdX     |tBodyGyrostdY     |tBodyGyrostdZ     |
|:--|:------------------|:------------------|:------------------|:-----------------|:-----------------|:-----------------|
|   |Min.   :-0.20578   |Min.   :-0.20421   |Min.   :-0.07245   |Min.   :-0.9943   |Min.   :-0.9942   |Min.   :-0.9855   |
|   |1st Qu.:-0.04712   |1st Qu.:-0.08955   |1st Qu.: 0.07475   |1st Qu.:-0.9735   |1st Qu.:-0.9629   |1st Qu.:-0.9609   |
|   |Median :-0.02871   |Median :-0.07318   |Median : 0.08512   |Median :-0.7890   |Median :-0.8017   |Median :-0.8010   |
|   |Mean   :-0.03244   |Mean   :-0.07426   |Mean   : 0.08744   |Mean   :-0.6916   |Mean   :-0.6533   |Mean   :-0.6164   |
|   |3rd Qu.:-0.01676   |3rd Qu.:-0.06113   |3rd Qu.: 0.10177   |3rd Qu.:-0.4414   |3rd Qu.:-0.4196   |3rd Qu.:-0.3106   |
|   |Max.   : 0.19270   |Max.   : 0.02747   |Max.   : 0.17910   |Max.   : 0.2677   |Max.   : 0.4765   |Max.   : 0.5649   |


**tBodyGyroJerkmeanX**, **tBodyGyroJerkmeanY**, **tBodyGyroJerkmeanZ**,
**tBodyGyroJerkstdX**, **tBodyGyroJerkstdY**, **tBodyGyroJerkstdZ**

|   |tBodyGyroJerkmeanX |tBodyGyroJerkmeanY |tBodyGyroJerkmeanZ  |tBodyGyroJerkstdX |tBodyGyroJerkstdY |tBodyGyroJerkstdZ |
|:--|:------------------|:------------------|:-------------------|:-----------------|:-----------------|:-----------------|
|   |Min.   :-0.15721   |Min.   :-0.07681   |Min.   :-0.092500   |Min.   :-0.9965   |Min.   :-0.9971   |Min.   :-0.9954   |
|   |1st Qu.:-0.10322   |1st Qu.:-0.04552   |1st Qu.:-0.061725   |1st Qu.:-0.9800   |1st Qu.:-0.9832   |1st Qu.:-0.9848   |
|   |Median :-0.09868   |Median :-0.04112   |Median :-0.053430   |Median :-0.8396   |Median :-0.8942   |Median :-0.8610   |
|   |Mean   :-0.09606   |Mean   :-0.04269   |Mean   :-0.054802   |Mean   :-0.7036   |Mean   :-0.7636   |Mean   :-0.7096   |
|   |3rd Qu.:-0.09110   |3rd Qu.:-0.03842   |3rd Qu.:-0.048985   |3rd Qu.:-0.4629   |3rd Qu.:-0.5861   |3rd Qu.:-0.4741   |
|   |Max.   :-0.02209   |Max.   :-0.01320   |Max.   :-0.006941   |Max.   : 0.1791   |Max.   : 0.2959   |Max.   : 0.1932   |


**tBodyAccMagmean**, **tBodyAccMagstd**

|   |tBodyAccMagmean   |tBodyAccMagstd    |
|:--|:-----------------|:-----------------|
|   |Min.   :-0.9865   |Min.   :-0.9865   |
|   |1st Qu.:-0.9573   |1st Qu.:-0.9430   |
|   |Median :-0.4829   |Median :-0.6074   |
|   |Mean   :-0.4973   |Mean   :-0.5439   |
|   |3rd Qu.:-0.0919   |3rd Qu.:-0.2090   |
|   |Max.   : 0.6446   |Max.   : 0.4284   |


**tGravityAccMagmean**, **tGravityAccMagstd**

|   |tGravityAccMagmean |tGravityAccMagstd |
|:--|:------------------|:-----------------|
|   |Min.   :-0.9865    |Min.   :-0.9865   |
|   |1st Qu.:-0.9573    |1st Qu.:-0.9430   |
|   |Median :-0.4829    |Median :-0.6074   |
|   |Mean   :-0.4973    |Mean   :-0.5439   |
|   |3rd Qu.:-0.0919    |3rd Qu.:-0.2090   |
|   |Max.   : 0.6446    |Max.   : 0.4284   |


**tBodyAccJerkMagmean**, **tBodyAccJerkMagstd**

|   |tBodyAccJerkMagmean |tBodyAccJerkMagstd |
|:--|:-------------------|:------------------|
|   |Min.   :-0.9928     |Min.   :-0.9946    |
|   |1st Qu.:-0.9807     |1st Qu.:-0.9765    |
|   |Median :-0.8168     |Median :-0.8014    |
|   |Mean   :-0.6079     |Mean   :-0.5842    |
|   |3rd Qu.:-0.2456     |3rd Qu.:-0.2173    |
|   |Max.   : 0.4345     |Max.   : 0.4506    |


**tBodyGyroMagmean**, **tBodyGyroMagstd**

|   |tBodyGyroMagmean  |tBodyGyroMagstd   |
|:--|:-----------------|:-----------------|
|   |Min.   :-0.9807   |Min.   :-0.9814   |
|   |1st Qu.:-0.9461   |1st Qu.:-0.9476   |
|   |Median :-0.6551   |Median :-0.7420   |
|   |Mean   :-0.5652   |Mean   :-0.6304   |
|   |3rd Qu.:-0.2159   |3rd Qu.:-0.3602   |
|   |Max.   : 0.4180   |Max.   : 0.3000   |


**tBodyGyroJerkMagmean**, **tBodyGyroJerkMagstd**

|   |tBodyGyroJerkMagmean |tBodyGyroJerkMagstd |
|:--|:--------------------|:-------------------|
|   |Min.   :-0.99732     |Min.   :-0.9977     |
|   |1st Qu.:-0.98515     |1st Qu.:-0.9805     |
|   |Median :-0.86479     |Median :-0.8809     |
|   |Mean   :-0.73637     |Mean   :-0.7550     |
|   |3rd Qu.:-0.51186     |3rd Qu.:-0.5767     |
|   |Max.   : 0.08758     |Max.   : 0.2502     |


**fBodyAccmeanX**, **fBodyAccmeanY**, **fBodyAccmeanZ**,
**fBodyAccstdX**, **fBodyAccstdY**, **fBodyAccstdZ**

|   |fBodyAccmeanX     |fBodyAccmeanY      |fBodyAccmeanZ     | fBodyAccstdX     | fBodyAccstdY      | fBodyAccstdZ     |
|:--|:-----------------|:------------------|:-----------------|:-----------------|:------------------|:-----------------|
|   |Min.   :-0.9952   |Min.   :-0.98903   |Min.   :-0.9895   |Min.   :-0.9966   |Min.   :-0.99068   |Min.   :-0.9872   |
|   |1st Qu.:-0.9787   |1st Qu.:-0.95361   |1st Qu.:-0.9619   |1st Qu.:-0.9820   |1st Qu.:-0.94042   |1st Qu.:-0.9459   |
|   |Median :-0.7691   |Median :-0.59498   |Median :-0.7236   |Median :-0.7470   |Median :-0.51338   |Median :-0.6441   |
|   |Mean   :-0.5758   |Mean   :-0.48873   |Mean   :-0.6297   |Mean   :-0.5522   |Mean   :-0.48148   |Mean   :-0.5824   |
|   |3rd Qu.:-0.2174   |3rd Qu.:-0.06341   |3rd Qu.:-0.3183   |3rd Qu.:-0.1966   |3rd Qu.:-0.07913   |3rd Qu.:-0.2655   |
|   |Max.   : 0.5370   |Max.   : 0.52419   |Max.   : 0.2807   |Max.   : 0.6585   |Max.   : 0.56019   |Max.   : 0.6871   |


**fBodyAccmeanFreqX**, **fBodyAccmeanFreqY**, **fBodyAccmeanFreqZ**

|   |fBodyAccmeanFreqX  |fBodyAccmeanFreqY   |fBodyAccmeanFreqZ  |
|:--|:------------------|:-------------------|:------------------|
|   |Min.   :-0.63591   |Min.   :-0.379518   |Min.   :-0.52011   |
|   |1st Qu.:-0.39165   |1st Qu.:-0.081314   |1st Qu.:-0.03629   |
|   |Median :-0.25731   |Median : 0.007855   |Median : 0.06582   |
|   |Mean   :-0.23227   |Mean   : 0.011529   |Mean   : 0.04372   |
|   |3rd Qu.:-0.06105   |3rd Qu.: 0.086281   |3rd Qu.: 0.17542   |
|   |Max.   : 0.15912   |Max.   : 0.466528   |Max.   : 0.40253   |


**fBodyAccJerkmeanX**, **fBodyAccJerkmeanY**, **fBodyAccJerkmeanZ**,
**fBodyAccJerkstdX**, **fBodyAccJerkstdY**, **fBodyAccJerkstdZ**

|   |fBodyAccJerkmeanX |fBodyAccJerkmeanY |fBodyAccJerkmeanZ |fBodyAccJerkstdX  |fBodyAccJerkstdY  |fBodyAccJerkstdZ    |
|:--|:-----------------|:-----------------|:-----------------|:-----------------|:-----------------|:-------------------|
|   |Min.   :-0.9946   |Min.   :-0.9894   |Min.   :-0.9920   |Min.   :-0.9951   |Min.   :-0.9905   |Min.   :-0.993108   |
|   |1st Qu.:-0.9828   |1st Qu.:-0.9725   |1st Qu.:-0.9796   |1st Qu.:-0.9847   |1st Qu.:-0.9737   |1st Qu.:-0.983747   |
|   |Median :-0.8126   |Median :-0.7817   |Median :-0.8707   |Median :-0.8254   |Median :-0.7852   |Median :-0.895121   |
|   |Mean   :-0.6139   |Mean   :-0.5882   |Mean   :-0.7144   |Mean   :-0.6121   |Mean   :-0.5707   |Mean   :-0.756489   |
|   |3rd Qu.:-0.2820   |3rd Qu.:-0.1963   |3rd Qu.:-0.4697   |3rd Qu.:-0.2475   |3rd Qu.:-0.1685   |3rd Qu.:-0.543787   |
|   |Max.   : 0.4743   |Max.   : 0.2767   |Max.   : 0.1578   |Max.   : 0.4768   |Max.   : 0.3498   |Max.   :-0.006236   |


**fBodyAccJerkmeanFreqX**, **fBodyAccJerkmeanFreqY**, **fBodyAccJerkmeanFreqZ**

|   |fBodyAccJerkmeanFreqX |fBodyAccJerkmeanFreqY |fBodyAccJerkmeanFreqZ |
|:--|:---------------------|:---------------------|:---------------------|
|   |Min.   :-0.57604      |Min.   :-0.60197      |Min.   :-0.62756      |
|   |1st Qu.:-0.28966      |1st Qu.:-0.39751      |1st Qu.:-0.30867      |
|   |Median :-0.06091      |Median :-0.23209      |Median :-0.09187      |
|   |Mean   :-0.06910      |Mean   :-0.22810      |Mean   :-0.13760      |
|   |3rd Qu.: 0.17660      |3rd Qu.:-0.04721      |3rd Qu.: 0.03858      |
|   |Max.   : 0.33145      |Max.   : 0.19568      |Max.   : 0.23011      |


**fBodyGyromeanX**, **fBodyGyromeanY**, **fBodyGyromeanZ**,
**fBodyGyrostdX**, **fBodyGyrostdY**,**fBodyGyrostdZ**

|   |fBodyGyromeanX    |fBodyGyromeanY    |fBodyGyromeanZ    |fBodyGyrostdX     |fBodyGyrostdY     |fBodyGyrostdZ     |
|:--|:-----------------|:-----------------|:-----------------|:-----------------|:-----------------|:-----------------|
|   |Min.   :-0.9931   |Min.   :-0.9940   |Min.   :-0.9860   |Min.   :-0.9947   |Min.   :-0.9944   |Min.   :-0.9867   |
|   |1st Qu.:-0.9697   |1st Qu.:-0.9700   |1st Qu.:-0.9624   |1st Qu.:-0.9750   |1st Qu.:-0.9602   |1st Qu.:-0.9643   |
|   |Median :-0.7300   |Median :-0.8141   |Median :-0.7909   |Median :-0.8086   |Median :-0.7964   |Median :-0.8224   |
|   |Mean   :-0.6367   |Mean   :-0.6767   |Mean   :-0.6044   |Mean   :-0.7110   |Mean   :-0.6454   |Mean   :-0.6577   |
|   |3rd Qu.:-0.3387   |3rd Qu.:-0.4458   |3rd Qu.:-0.2635   |3rd Qu.:-0.4813   |3rd Qu.:-0.4154   |3rd Qu.:-0.3916   |
|   |Max.   : 0.4750   |Max.   : 0.3288   |Max.   : 0.4924   |Max.   : 0.1966   |Max.   : 0.6462   |Max.   : 0.5225   |


**fBodyGyromeanFreqX**, **fBodyGyromeanFreqY**, **fBodyGyromeanFreqZ**

|   |fBodyGyromeanFreqX  |fBodyGyromeanFreqY |fBodyGyromeanFreqZ |
|:--|:-------------------|:------------------|:------------------|
|   |Min.   :-0.395770   |Min.   :-0.66681   |Min.   :-0.50749   |
|   |1st Qu.:-0.213363   |1st Qu.:-0.29433   |1st Qu.:-0.15481   |
|   |Median :-0.115527   |Median :-0.15794   |Median :-0.05081   |
|   |Mean   :-0.104551   |Mean   :-0.16741   |Mean   :-0.05718   |
|   |3rd Qu.: 0.002655   |3rd Qu.:-0.04269   |3rd Qu.: 0.04152   |
|   |Max.   : 0.249209   |Max.   : 0.27314   |Max.   : 0.37707   |


**fBodyAccMagmean**, **fBodyAccMagstd**, **fBodyAccMagmeanFreq**

|   |fBodyAccMagmean   |fBodyAccMagstd    |fBodyAccMagmeanFreq |
|:--|:-----------------|:-----------------|:-------------------|
|   |Min.   :-0.9868   |Min.   :-0.9876   |Min.   :-0.31234    |
|   |1st Qu.:-0.9560   |1st Qu.:-0.9452   |1st Qu.:-0.01475    |
|   |Median :-0.6703   |Median :-0.6513   |Median : 0.08132    |
|   |Mean   :-0.5365   |Mean   :-0.6210   |Mean   : 0.07613    |
|   |3rd Qu.:-0.1622   |3rd Qu.:-0.3654   |3rd Qu.: 0.17436    |
|   |Max.   : 0.5866   |Max.   : 0.1787   |Max.   : 0.43585    |


**fBodyBodyAccJerkMagmean**, **fBodyBodyAccJerkMagstd**,  **fBodyBodyAccJerkMagmeanFreq**

|   |fBodyBodyAccJerkMagmean |fBodyBodyAccJerkMagstd |fBodyBodyAccJerkMagmeanFreq |
|:--|:-----------------------|:----------------------|:---------------------------|
|   |Min.   :-0.9940         |Min.   :-0.9944        |Min.   :-0.12521            |
|   |1st Qu.:-0.9770         |1st Qu.:-0.9752        |1st Qu.: 0.04527            |
|   |Median :-0.7940         |Median :-0.8126        |Median : 0.17198            |
|   |Mean   :-0.5756         |Mean   :-0.5992        |Mean   : 0.16255            |
|   |3rd Qu.:-0.1872         |3rd Qu.:-0.2668        |3rd Qu.: 0.27593            |
|   |Max.   : 0.5384         |Max.   : 0.3163        |Max.   : 0.48809            |


**fBodyBodyGyroMagmean**, **fBodyBodyGyroMagstd**, **fBodyBodyGyroMagmeanFreq**

|   |fBodyBodyGyroMagmean |fBodyBodyGyroMagstd |fBodyBodyGyroMagmeanFreq |
|:--|:--------------------|:-------------------|:------------------------|
|   |Min.   :-0.9865      |Min.   :-0.9815     |Min.   :-0.45664         |
|   |1st Qu.:-0.9616      |1st Qu.:-0.9488     |1st Qu.:-0.16951         |
|   |Median :-0.7657      |Median :-0.7727     |Median :-0.05352         |
|   |Mean   :-0.6671      |Mean   :-0.6723     |Mean   :-0.03603         |
|   |3rd Qu.:-0.4087      |3rd Qu.:-0.4277     |3rd Qu.: 0.08228         |
|   |Max.   : 0.2040      |Max.   : 0.2367     |Max.   : 0.40952         |


**fBodyBodyGyroJerkMagmean**, **fBodyBodyGyroJerkMagstd**, **fBodyBodyGyroJerkMagmeanFreq**

|   |fBodyBodyGyroJerkMagmean |fBodyBodyGyroJerkMagstd |fBodyBodyGyroJerkMagmeanFreq |
|:--|:------------------------|:-----------------------|:----------------------------|
|   |Min.   :-0.9976          |Min.   :-0.9976         |Min.   :-0.18292             |
|   |1st Qu.:-0.9813          |1st Qu.:-0.9802         |1st Qu.: 0.05423             |
|   |Median :-0.8779          |Median :-0.8941         |Median : 0.11156             |
|   |Mean   :-0.7564          |Mean   :-0.7715         |Mean   : 0.12592             |
|   |3rd Qu.:-0.5831          |3rd Qu.:-0.6081         |3rd Qu.: 0.20805             |
|   |Max.   : 0.1466          |Max.   : 0.2878         |Max.   : 0.42630             |


**angletBodyAccMeangravity**, **angletBodyAccJerkMeangravityMean**, **angletBodyGyroMeangravityMean**, **angletBodyGyroJerkMeangravityMean**, **angleXgravityMean**, **angleYgravityMean**, **angleZgravityMean**

|   |angletBodyAccMeangravity |angletBodyAccJerkMeangravityMean |angletBodyGyroMeangravityMean |angletBodyGyroJerkMeangravityMean |angleXgravityMean |angleYgravityMean  |angleZgravityMean   |
|:--|:------------------------|:--------------------------------|:-----------------------------|:---------------------------------|:-----------------|:------------------|:-------------------|
|   |Min.   :-0.163043        |Min.   :-0.1205540               |Min.   :-0.38931              |Min.   :-0.22367                  |Min.   :-0.9471   |Min.   :-0.87457   |Min.   :-0.873649   |
|   |1st Qu.:-0.011012        |1st Qu.:-0.0211694               |1st Qu.:-0.01977              |1st Qu.:-0.05613                  |1st Qu.:-0.7907   |1st Qu.: 0.02191   |1st Qu.:-0.083912   |
|   |Median : 0.007878        |Median : 0.0031358               |Median : 0.02087              |Median :-0.01602                  |Median :-0.7377   |Median : 0.17136   |Median : 0.005079   |
|   |Mean   : 0.006556        |Mean   : 0.0006439               |Mean   : 0.02193              |Mean   :-0.01137                  |Mean   :-0.5243   |Mean   : 0.07865   |Mean   :-0.040436   |
|   |3rd Qu.: 0.024393        |3rd Qu.: 0.0220881               |3rd Qu.: 0.06460              |3rd Qu.: 0.03200                  |3rd Qu.:-0.5823   |3rd Qu.: 0.24343   |3rd Qu.: 0.106190   |
|   |Max.   : 0.129154        |Max.   : 0.2032600               |Max.   : 0.44410              |Max.   : 0.18238                  |Max.   : 0.7378   |Max.   : 0.42476   |Max.   : 0.390444   |


##References
[1]Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

