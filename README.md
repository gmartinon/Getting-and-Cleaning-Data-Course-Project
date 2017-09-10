## What run_analysis.R does (see also the comments in run_analysis.R)

In order for the script to work properly, the directory UCI_HAR_Dataset downloaded should be in your working directory.

* STEP 1 : we first merge the test and train data sets using a simple rbind.
* STEP 2 : we extract columns names from the features.txt file. We then retain only the columns whose names contains mean() or
  std(). This is done with help the grep command.
* STEP 3 : we supplement the data with two columns (two calls to mutate), the subject id column and the activity column, retrieved
  from the subject.txt and y.txt files. Again we have to merge train and test data set with calls to rbind in the same order as
  before. This ensures that the subject and activity column match well the measurement order.
* STEP 4 : we give more explicit names to the columns, by expandig the abbreviations. This is done with the gsub function.
* STEP 5 : we group the data set by subject AND activity, with a call to the group_by (dplyr) function with two arguments. The summarise_all
  function (with a function mean argument) of the dplyr package then collapses the information of each variable for each pair
  (subject, activity) by taking the average in each corresponding group.

The resulting data set called tidydataset, gives for each variable and each combination, the mean of the variable. For example, the very first
numerical value is 0.22159824394 and is the averaged measurement of tBodyAcc-mean-X for subject number 1 when laying.

Since there are 30 subjects and 6 activities, the file is only 30*6 = 180 lines long
