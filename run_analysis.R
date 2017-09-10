library(dplyr)

### step 1
testdataset <- read.table("./UCI_HAR_Dataset/test/X_test.txt")                   # read test data set
traindataset <- read.table("./UCI_HAR_Dataset/train/X_train.txt")                # read train data set
dataset <- rbind(testdataset, traindataset)                                      # merge into full data set

### step 2
features <- read.table("./UCI_HAR_Dataset/features.txt")                         # read the features
colnames(dataset) <- features[,2]                                                # rename the columns of the full data set according to the features
mycolnames <- grep('mean\\(\\)|std\\(\\)', colnames(dataset), value = TRUE)      # find column names evoking a mean of standard deviation
dataset <- dataset[, mycolnames]                                                 # keep only these columns in the data set

### step 3
# descriptive activity name
testactivities <- read.table("./UCI_HAR_Dataset/test/y_test.txt")                # read test activities
trainactivities <- read.table("./UCI_HAR_Dataset/train/y_train.txt")             # read train activities
activities <- rbind(testactivities, trainactivities)                             # merge the activities (in the same order as in step 1)
activityindices <- activities[,1]                                                # just the first (and single) column, put as a vector
activitylabels <- read.table("./UCI_HAR_Dataset/activity_labels.txt")            # read the activity labels
dataset <- mutate(dataset, activity = activitylabels[activityindices,2])         # add the column activity to the data set, with name from the labels
# subject id
testids <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")                 # read test ids
trainids <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")              # read train ids
ids <- rbind(testids, trainids)                                                  # merge the ids (in the same order as in step 1)
dataset <- mutate(dataset, subject = ids[,1])                                    # add the column subject to the data set, filled with the ids

### step 4
newcolnames <- colnames(dataset)                                                 # perform some string replacements with gsub function
newcolnames <- gsub("^t", "timeDomain.", newcolnames)                            # new names are more explicit
newcolnames <- gsub("^f", "frequencyDomain.", newcolnames)
newcolnames <- gsub("Acc", "Acceleration", newcolnames)
newcolnames <- gsub("Gyro", "Gyroscope", newcolnames)
newcolnames <- gsub("Mag", "Magnitude", newcolnames)
newcolnames <- gsub("\\(\\)", "", newcolnames)
colnames(dataset) <- newcolnames

### step 5
tidydataset <- dataset %>% group_by(subject, activity) %>%                       # group the data set according to the subject id and activity name
                           summarise_all(mean)                                   # summarise the data for each pair of (subject, activity) by collapsing the data with the mean function
write.table(tidydataset, "tidydata.txt", row.names = FALSE)                      # write the result into the text file
