## Codebook

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S
II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has
been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the
test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width
sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and
body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational
force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each
window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for
more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  

### Description of the variables

* subject                                              : the id of the subject
* activity                                             : the activity of the subject
* timeDomain.BodyAcceleration-mean-X                   : average of the measurement tBodyAcc-mean()-X for each subject and each activity
* timeDomain.BodyAcceleration-mean-Y                   : average of the measurement tBodyAcc-mean()-Y for each subject and each activity
* timeDomain.BodyAcceleration-mean-Z                   : average of the measurement tBodyAcc-mean()-Z for each subject and each activity
* timeDomain.BodyAcceleration-std-X                    : average of the measurement tBodyAcc-std()-X for each subject and each activity
* timeDomain.BodyAcceleration-std-Y                    : average of the measurement tBodyAcc-std()-Y for each subject and each activity
* timeDomain.BodyAcceleration-std-Z                    : average of the measurement tBodyAcc-std()-Z for each subject and each activity
* timeDomain.GravityAcceleration-mean-X                : average of the measurement tGravityAcc-mean()-X for each subject and each activity
* timeDomain.GravityAcceleration-mean-Y                : average of the measurement tGravityAcc-mean()-Y for each subject and each activity
* timeDomain.GravityAcceleration-mean-Z                : average of the measurement tGravityAcc-mean()-Z for each subject and each activity
* timeDomain.GravityAcceleration-std-X                 : average of the measurement tGravityAcc-std()-X for each subject and each activity
* timeDomain.GravityAcceleration-std-Y                 : average of the measurement tGravityAcc-std()-Y for each subject and each activity
* timeDomain.GravityAcceleration-std-Z                 : average of the measurement tGravityAcc-std()-Z for each subject and each activity
* timeDomain.BodyAccelerationJerk-mean-X               : average of the measurement tBodyAccJerk-mean()-X for each subject and each activity
* timeDomain.BodyAccelerationJerk-mean-Y               : average of the measurement tBodyAccJerk-mean()-Y for each subject and each activity
* timeDomain.BodyAccelerationJerk-mean-Z               : average of the measurement tBodyAccJerk-mean()-Z for each subject and each activity
* timeDomain.BodyAccelerationJerk-std-X                : average of the measurement tBodyAccJerk-std()-X for each subject and each activity
* timeDomain.BodyAccelerationJerk-std-Y                : average of the measurement tBodyAccJerk-std()-Y for each subject and each activity
* timeDomain.BodyAccelerationJerk-std-Z                : average of the measurement tBodyAccJerk-std()-Z for each subject and each activity
* timeDomain.BodyGyroscope-mean-X                      : average of the measurement tBodyGyro-mean()-X for each subject and each activity
* timeDomain.BodyGyroscope-mean-Y                      : average of the measurement tBodyGyro-mean()-Y for each subject and each activity
* timeDomain.BodyGyroscope-mean-Z                      : average of the measurement tBodyGyro-mean()-Z for each subject and each activity
* timeDomain.BodyGyroscope-std-X                       : average of the measurement tBodyGyro-std()-X for each subject and each activity
* timeDomain.BodyGyroscope-std-Y                       : average of the measurement tBodyGyro-std()-Y for each subject and each activity
* timeDomain.BodyGyroscope-std-Z                       : average of the measurement tBodyGyro-std()-Z for each subject and each activity
* timeDomain.BodyGyroscopeJerk-mean-X                  : average of the measurement tBodyGyroJerk-mean()-X for each subject and each activity
* timeDomain.BodyGyroscopeJerk-mean-Y                  : average of the measurement tBodyGyroJerk-mean()-Y for each subject and each activity
* timeDomain.BodyGyroscopeJerk-mean-Z                  : average of the measurement tBodyGyroJerk-mean()-Z for each subject and each activity
* timeDomain.BodyGyroscopeJerk-std-X                   : average of the measurement tBodyGyroJerk-std()-X for each subject and each activity
* timeDomain.BodyGyroscopeJerk-std-Y                   : average of the measurement tBodyGyroJerk-std()-Y for each subject and each activity
* timeDomain.BodyGyroscopeJerk-std-Z                   : average of the measurement tBodyGyroJerk-std()-Z for each subject and each activity
* timeDomain.BodyAccelerationMagnitude-mean            : average of the measurement tBodyAccMag-mean() for each subject and each activity
* timeDomain.BodyAccelerationMagnitude-std             : average of the measurement tBodyAccMag-std() for each subject and each activity
* timeDomain.GravityAccelerationMagnitude-mean         : average of the measurement tGravityAccMag-mean() for each subject and each activity
* timeDomain.GravityAccelerationMagnitude-std          : average of the measurement tGravityAccMag-std() for each subject and each activity
* timeDomain.BodyAccelerationJerkMagnitude-mean        : average of the measurement tBodyAccJerkMag-mean() for each subject and each activity
* timeDomain.BodyAccelerationJerkMagnitude-std         : average of the measurement tBodyAccJerkMag-std() for each subject and each activity
* timeDomain.BodyGyroscopeMagnitude-mean               : average of the measurement tBodyGyroMag-mean() for each subject and each activity
* timeDomain.BodyGyroscopeMagnitude-std                : average of the measurement tBodyGyroMag-std() for each subject and each activity
* timeDomain.BodyGyroscopeJerkMagnitude-mean           : average of the measurement tBodyGyroJerkMag-mean() for each subject and each activity
* timeDomain.BodyGyroscopeJerkMagnitude-std            : average of the measurement tBodyGyroJerkMag-std() for each subject and each activity
* frequencyDomain.BodyAcceleration-mean-X              : average of the measurement fBodyAcc-mean()-X for each subject and each activity
* frequencyDomain.BodyAcceleration-mean-Y              : average of the measurement fBodyAcc-mean()-Y for each subject and each activity
* frequencyDomain.BodyAcceleration-mean-Z              : average of the measurement fBodyAcc-mean()-Z for each subject and each activity
* frequencyDomain.BodyAcceleration-std-X               : average of the measurement fBodyAcc-std()-X for each subject and each activity
* frequencyDomain.BodyAcceleration-std-Y               : average of the measurement fBodyAcc-std()-Y for each subject and each activity
* frequencyDomain.BodyAcceleration-std-Z               : average of the measurement fBodyAcc-std()-Z for each subject and each activity
* frequencyDomain.BodyAccelerationJerk-mean-X          : average of the measurement fBodyAccJerk-mean()-X for each subject and each activity
* frequencyDomain.BodyAccelerationJerk-mean-Y          : average of the measurement fBodyAccJerk-mean()-Y for each subject and each activity
* frequencyDomain.BodyAccelerationJerk-mean-Z          : average of the measurement fBodyAccJerk-mean()-Z for each subject and each activity
* frequencyDomain.BodyAccelerationJerk-std-X           : average of the measurement fBodyAccJerk-std()-X for each subject and each activity
* frequencyDomain.BodyAccelerationJerk-std-Y           : average of the measurement fBodyAccJerk-std()-Y for each subject and each activity
* frequencyDomain.BodyAccelerationJerk-std-Z           : average of the measurement fBodyAccJerk-std()-Z for each subject and each activity
* frequencyDomain.BodyGyroscope-mean-X                 : average of the measurement fBodyGyro-mean()-X for each subject and each activity
* frequencyDomain.BodyGyroscope-mean-Y                 : average of the measurement fBodyGyro-mean()-Y for each subject and each activity
* frequencyDomain.BodyGyroscope-mean-Z                 : average of the measurement fBodyGyro-mean()-Z for each subject and each activity
* frequencyDomain.BodyGyroscope-std-X                  : average of the measurement fBodyGyro-std()-X for each subject and each activity
* frequencyDomain.BodyGyroscope-std-Y                  : average of the measurement fBodyGyro-std()-Y for each subject and each activity
* frequencyDomain.BodyGyroscope-std-Z                  : average of the measurement fBodyGyro-std()-Z for each subject and each activity
* frequencyDomain.BodyAccelerationMagnitude-mean       : average of the measurement fBodyAccMag-mean() for each subject and each activity
* frequencyDomain.BodyAccelerationMagnitude-std        : average of the measurement fBodyAccMag-std() for each subject and each activity
* frequencyDomain.BodyBodyAccelerationJerkMagnitude-mea: average of the measurement fBodyBodyAccJerkMag-mean() for each subject and each activity
* frequencyDomain.BodyBodyAccelerationJerkMagnitude-std: average of the measurement fBodyBodyAccJerkMag-std() for each subject and each activity
* frequencyDomain.BodyBodyGyroscopeMagnitude-mean      : average of the measurement fBodyBodyGyroMag-mean() for each subject and each activity
* frequencyDomain.BodyBodyGyroscopeMagnitude-std       : average of the measurement fBodyBodyGyroMag-std() for each subject and each activity
* frequencyDomain.BodyBodyGyroscopeJerkMagnitude-mean  : average of the measurement fBodyBodyGyroJerkMag-mean() for each subject and each activity
* frequencyDomain.BodyBodyGyroscopeJerkMagnitude-std   : average of the measurement fBodyBodyGyroJerkMag-std() for each subject and each activity
