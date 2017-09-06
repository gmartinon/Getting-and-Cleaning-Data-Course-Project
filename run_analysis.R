### step 1 :  merge test and training sets
dt <- rbind(read.table("./UCI_HAR_Dataset/test/X_test.txt"),
            read.table("./UCI_HAR_Dataset/train/X_train.txt"))

### step 2 and 4: name the columns and extract the ones featuring a mean() or std()
colnames(dt) <- read.table("./UCI_HAR_Dataset/features.txt",
                           stringsAsFactors = FALSE)[,2]
dt <- dt[, grep('mean\\(\\)|std\\(\\)', colnames(dt), value = TRUE)]

### step 3 : add columns with descriptive activity names and subject id
# descriptive activity name
act <- rbind(read.table("./UCI_HAR_Dataset/test/y_test.txt"),
             read.table("./UCI_HAR_Dataset/train/y_train.txt"))
act <- read.table("./UCI_HAR_Dataset/activity_labels.txt",
                  stringsAsFactors = FALSE)[act[,1],2]
dt[["activity"]] <- act
# subject id
sub <- rbind(read.table("./UCI_HAR_Dataset/test/subject_test.txt"),
             read.table("./UCI_HAR_Dataset/train/subject_train.txt"))
dt[["subject"]] <- sub[,1]

### step 5 : tidy data set with average of each variable for each subject and activity
res <- aggregate(. ~ activity + subject, dt, mean)
# put subject column at first position
res <- res[,c(2,1,3:ncol(res))]
# embrace colnames with <> to denote that the value is averaged
colnames(res)[3:ncol(res)] <- paste("<", colnames(res)[3:ncol(res)], ">", sep = "")

### bonus : the dplyr version
library(dplyr)
res <- dt %>% group_by(subject, activity) %>% summarise_all(mean)
colnames(res)[3:ncol(res)] <- paste("<", colnames(res)[3:ncol(res)], ">", sep = "")

### extra bonus : narrow or wide representations
### I think the wide representation better matches the tidy data set definition
library(tidyr)
# going from wide to narrow table
res <- res %>% gather(average, value, -(subject:activity)) %>% arrange(subject)
# going from narrow to wide table
res <- res %>% spread(average, value)
