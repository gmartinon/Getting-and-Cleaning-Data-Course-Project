## Codebook

### Comment about wide and narrow data sets

There are two ways of getting clean data.
* the wide dataset looks like

\ subject\ \ \ \ \ activity\ \ \ \ \ \ measurement_1\ \ \ \ \ \ \ measurement_2\ \ \ \ \ \ \ measurement_3

SUBJECT_1\ \ \ ACTIVITY_1\ \ \ AVG_MEASUREMENT_1\ \ \ AVG_MEASUREMENT_2\ \ \ AVG_MEASUREMENT_3

SUBJECT_1\ \ \ ACTIVITY_2\ \ \ AVG_MEASUREMENT_1\ \ \ AVG_MEASUREMENT_2\ \ \ AVG_MEASUREMENT_3

SUBJECT_1\ \ \ ACTIVITY_3\ \ \ AVG_MEASUREMENT_1\ \ \ AVG_MEASUREMENT_2\ \ \ AVG_MEASUREMENT_3

SUBJECT_2\ \ \ ACTIVITY_1\ \ \ AVG_MEASUREMENT_1\ \ \ AVG_MEASUREMENT_2\ \ \ AVG_MEASUREMENT_3

SUBJECT_2\ \ \ ACTIVITY_2\ \ \ AVG_MEASUREMENT_1\ \ \ AVG_MEASUREMENT_2\ \ \ AVG_MEASUREMENT_3

SUBJECT_2\ \ \ ACTIVITY_3\ \ \ AVG_MEASUREMENT_1\ \ \ AVG_MEASUREMENT_2\ \ \ AVG_MEASUREMENT_3

* the narrow dataset looks like

\ subject\ \ \ \ \ activity\ \ \ measurement_name\ \ measurement_value

SUBJECT_1\ \ \ ACTIVITY_1\ \ \ measurement_1\ \ \ \ AVG_MEASUREMENT_1

SUBJECT_1\ \ \ ACTIVITY_1\ \ \ measurement_2\ \ \ \ AVG_MEASUREMENT_2

SUBJECT_1\ \ \ ACTIVITY_1\ \ \ measurement_3\ \ \ \ AVG_MEASUREMENT_3

SUBJECT_1\ \ \ ACTIVITY_2\ \ \ measurement_1\ \ \ \ AVG_MEASUREMENT_1

SUBJECT_1\ \ \ ACTIVITY_2\ \ \ measurement_2\ \ \ \ AVG_MEASUREMENT_2

SUBJECT_1\ \ \ ACTIVITY_2\ \ \ measurement_3\ \ \ \ AVG_MEASUREMENT_3

SUBJECT_1\ \ \ ACTIVITY_3\ \ \ measurement_1\ \ \ \ AVG_MEASUREMENT_1

SUBJECT_1\ \ \ ACTIVITY_3\ \ \ measurement_2\ \ \ \ AVG_MEASUREMENT_2

SUBJECT_1\ \ \ ACTIVITY_3\ \ \ measurement_3\ \ \ \ AVG_MEASUREMENT_3

SUBJECT_2\ \ \ ACTIVITY_1\ \ \ measurement_1\ \ \ \ AVG_MEASUREMENT_1

SUBJECT_2\ \ \ ACTIVITY_1\ \ \ measurement_2\ \ \ \ AVG_MEASUREMENT_2

SUBJECT_2\ \ \ ACTIVITY_1\ \ \ measurement_3\ \ \ \ AVG_MEASUREMENT_3

SUBJECT_2\ \ \ ACTIVITY_2\ \ \ measurement_1\ \ \ \ AVG_MEASUREMENT_1

SUBJECT_2\ \ \ ACTIVITY_2\ \ \ measurement_2\ \ \ \ AVG_MEASUREMENT_2

SUBJECT_2\ \ \ ACTIVITY_2\ \ \ measurement_3\ \ \ \ AVG_MEASUREMENT_3

SUBJECT_2\ \ \ ACTIVITY_3\ \ \ measurement_1\ \ \ \ AVG_MEASUREMENT_1

SUBJECT_2\ \ \ ACTIVITY_3\ \ \ measurement_2\ \ \ \ AVG_MEASUREMENT_2

SUBJECT_2\ \ \ ACTIVITY_3\ \ \ measurement_3\ \ \ \ AVG_MEASUREMENT_3

The wide data set will have many columns if there are many measurements, while the narrow data set will always have four columns.
Since a tidy data set is supposed to get one column for each variable and one row for each realisation of that variable, we
believe that the wide data set is "tidyer" than the narrow one. However, the latter is probably easier to process since everything
is nicely grouped together. Thus the code in run_analysis.r provides both ways of formatting.

### What run_analysis.R does (see also the comments in run_analysis.R)

* we first merge the test and train data sets using a simple rbind (step 1).
* in order to restrict the data to only mean() and std() measurements (step 2) we assign column names as read from the
  features.txt file after a grep command (step 4).
* we also supplement the data with two columns, the subject column and the activity column (step 3), retrieved from the subject.txt and
  y.txt files. Since no reordering was performed by the previous rbind call, we just read subject and activity in the same order as
  we read the measurement data. This ensures that the subject and activity column match well the measurement order.
* finally, a simple call to the aggregate function gives the tidy data in a wide format. Since every measurement is now averaged,
  we rename the measurement columns with brackets (see below).
* as extra bonus, we also provide the dplyr version of the tidying process and show how to go from wide to narrow data set and
  vice versa.

### Comments on the variables

Appart from subject and activity, the variable names match the ones of the original data set.
We have extracted only the variables denoting an average or a standard deviation. This amounts to retain only those with "mean()" or "std()" in their name.
Since wee averaged in time each measurement for each combination of (subject, activity), we have embraced the variable names into brackets <>, a usual notation for time average.

### Description of the variables

* subject                       the id of the subject for each subject and each activity
* activity                      the activity of the subject for each subject and each activity
* <tBodyAcc-mean()-X>           time average of the measurement BodyAcc-mean()-X for each subject and each activity
* <tBodyAcc-mean()-Y>           time average of the measurement BodyAcc-mean()-Y for each subject and each activity
* <tBodyAcc-mean()-Z>           time average of the measurement BodyAcc-mean()-Z for each subject and each activity
* <tBodyAcc-std()-X>            time average of the measurement BodyAcc-std()-X for each subject and each activity
* <tBodyAcc-std()-Y>            time average of the measurement BodyAcc-std()-Y for each subject and each activity
* <tBodyAcc-std()-Z>            time average of the measurement BodyAcc-std()-Z for each subject and each activity
* <tGravityAcc-mean()-X>        time average of the measurement GravityAcc-mean()-X for each subject and each activity
* <tGravityAcc-mean()-Y>        time average of the measurement GravityAcc-mean()-Y for each subject and each activity
* <tGravityAcc-mean()-Z>        time average of the measurement GravityAcc-mean()-Z for each subject and each activity
* <tGravityAcc-std()-X>         time average of the measurement GravityAcc-std()-X for each subject and each activity
* <tGravityAcc-std()-Y>         time average of the measurement GravityAcc-std()-Y for each subject and each activity
* <tGravityAcc-std()-Z>         time average of the measurement GravityAcc-std()-Z for each subject and each activity
* <tBodyAccJerk-mean()-X>       time average of the measurement BodyAccJerk-mean()-X for each subject and each activity
* <tBodyAccJerk-mean()-Y>       time average of the measurement BodyAccJerk-mean()-Y for each subject and each activity
* <tBodyAccJerk-mean()-Z>       time average of the measurement BodyAccJerk-mean()-Z for each subject and each activity
* <tBodyAccJerk-std()-X>        time average of the measurement BodyAccJerk-std()-X for each subject and each activity
* <tBodyAccJerk-std()-Y>        time average of the measurement BodyAccJerk-std()-Y for each subject and each activity
* <tBodyAccJerk-std()-Z>        time average of the measurement BodyAccJerk-std()-Z for each subject and each activity
* <tBodyGyro-mean()-X>          time average of the measurement BodyGyro-mean()-X for each subject and each activity
* <tBodyGyro-mean()-Y>          time average of the measurement BodyGyro-mean()-Y for each subject and each activity
* <tBodyGyro-mean()-Z>          time average of the measurement BodyGyro-mean()-Z for each subject and each activity
* <tBodyGyro-std()-X>           time average of the measurement BodyGyro-std()-X for each subject and each activity
* <tBodyGyro-std()-Y>           time average of the measurement BodyGyro-std()-Y for each subject and each activity
* <tBodyGyro-std()-Z>           time average of the measurement BodyGyro-std()-Z for each subject and each activity
* <tBodyGyroJerk-mean()-X>      time average of the measurement BodyGyroJerk-mean()-X for each subject and each activity
* <tBodyGyroJerk-mean()-Y>      time average of the measurement BodyGyroJerk-mean()-Y for each subject and each activity
* <tBodyGyroJerk-mean()-Z>      time average of the measurement BodyGyroJerk-mean()-Z for each subject and each activity
* <tBodyGyroJerk-std()-X>       time average of the measurement BodyGyroJerk-std()-X for each subject and each activity
* <tBodyGyroJerk-std()-Y>       time average of the measurement BodyGyroJerk-std()-Y for each subject and each activity
* <tBodyGyroJerk-std()-Z>       time average of the measurement BodyGyroJerk-std()-Z for each subject and each activity
* <tBodyAccMag-mean()>          time average of the measurement BodyAccMag-mean() for each subject and each activity
* <tBodyAccMag-std()>           time average of the measurement BodyAccMag-std() for each subject and each activity
* <tGravityAccMag-mean()>       time average of the measurement GravityAccMag-mean() for each subject and each activity
* <tGravityAccMag-std()>        time average of the measurement GravityAccMag-std() for each subject and each activity
* <tBodyAccJerkMag-mean()>      time average of the measurement BodyAccJerkMag-mean() for each subject and each activity
* <tBodyAccJerkMag-std()>       time average of the measurement BodyAccJerkMag-std() for each subject and each activity
* <tBodyGyroMag-mean()>         time average of the measurement BodyGyroMag-mean() for each subject and each activity
* <tBodyGyroMag-std()>          time average of the measurement BodyGyroMag-std() for each subject and each activity
* <tBodyGyroJerkMag-mean()>     time average of the measurement BodyGyroJerkMag-mean() for each subject and each activity
* <tBodyGyroJerkMag-std()>      time average of the measurement BodyGyroJerkMag-std() for each subject and each activity
* <fBodyAcc-mean()-X>           time average of the measurement BodyAcc-mean()-X for each subject and each activity
* <fBodyAcc-mean()-Y>           time average of the measurement BodyAcc-mean()-Y for each subject and each activity
* <fBodyAcc-mean()-Z>           time average of the measurement BodyAcc-mean()-Z for each subject and each activity
* <fBodyAcc-std()-X>            time average of the measurement BodyAcc-std()-X for each subject and each activity
* <fBodyAcc-std()-Y>            time average of the measurement BodyAcc-std()-Y for each subject and each activity
* <fBodyAcc-std()-Z>            time average of the measurement BodyAcc-std()-Z for each subject and each activity
* <fBodyAccJerk-mean()-X>       time average of the measurement BodyAccJerk-mean()-X for each subject and each activity
* <fBodyAccJerk-mean()-Y>       time average of the measurement BodyAccJerk-mean()-Y for each subject and each activity
* <fBodyAccJerk-mean()-Z>       time average of the measurement BodyAccJerk-mean()-Z for each subject and each activity
* <fBodyAccJerk-std()-X>        time average of the measurement BodyAccJerk-std()-X for each subject and each activity
* <fBodyAccJerk-std()-Y>        time average of the measurement BodyAccJerk-std()-Y for each subject and each activity
* <fBodyAccJerk-std()-Z>        time average of the measurement BodyAccJerk-std()-Z for each subject and each activity
* <fBodyGyro-mean()-X>          time average of the measurement BodyGyro-mean()-X for each subject and each activity
* <fBodyGyro-mean()-Y>          time average of the measurement BodyGyro-mean()-Y for each subject and each activity
* <fBodyGyro-mean()-Z>          time average of the measurement BodyGyro-mean()-Z for each subject and each activity
* <fBodyGyro-std()-X>           time average of the measurement BodyGyro-std()-X for each subject and each activity
* <fBodyGyro-std()-Y>           time average of the measurement BodyGyro-std()-Y for each subject and each activity
* <fBodyGyro-std()-Z>           time average of the measurement BodyGyro-std()-Z for each subject and each activity
* <fBodyAccMag-mean()>          time average of the measurement BodyAccMag-mean() for each subject and each activity
* <fBodyAccMag-std()>           time average of the measurement BodyAccMag-std() for each subject and each activity
* <fBodyBodyAccJerkMag-mean()>  time average of the measurement BodyBodyAccJerkMag-mean() for each subject and each activity
* <fBodyBodyAccJerkMag-std()>   time average of the measurement BodyBodyAccJerkMag-std() for each subject and each activity
* <fBodyBodyGyroMag-mean()>     time average of the measurement BodyBodyGyroMag-mean() for each subject and each activity
* <fBodyBodyGyroMag-std()>      time average of the measurement BodyBodyGyroMag-std() for each subject and each activity
* <fBodyBodyGyroJerkMag-mean()> time average of the measurement BodyBodyGyroJerkMag-mean() for each subject and each activity
* <fBodyBodyGyroJerkMag-std()>  time average of the measurement BodyBodyGyroJerkMag-std() for each subject and each activity
