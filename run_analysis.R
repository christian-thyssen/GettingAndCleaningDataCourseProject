# Step 0: Download the raw data.
data.dir <- "data"
if(!dir.exists(data.dir)) dir.create(data.dir)
data.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(data.url, file.path(data.dir, "data.zip"))
unzip(file.path(data.dir, "data.zip"), exdir = data.dir)

# Step 1: Merge the training and the test sets to create one data set.
X.train.file.path <- file.path(data.dir, "UCI HAR Dataset", "train", "X_train.txt")
X.test.file.path <- file.path(data.dir, "UCI HAR Dataset", "test", "X_test.txt")
X.train.data.frame <- read.table(X.train.file.path)
X.test.data.frame <- read.table(X.test.file.path)
X.data.frame <- rbind(X.train.data.frame, X.test.data.frame)

feature.names.file.path <- file.path(data.dir, "UCI HAR Dataset", "features.txt")
feature.names.data.frame <- read.table(feature.names.file.path, col.names = c("index", "name"))
feature.names <- feature.names.data.frame$name
names(X.data.frame) <- feature.names

y.train.file.path <- file.path(data.dir, "UCI HAR Dataset", "train", "y_train.txt")
y.test.file.path <- file.path(data.dir, "UCI HAR Dataset", "test", "y_test.txt")
y.train.data.frame <- read.table(y.train.file.path)
y.test.data.frame <- read.table(y.test.file.path)
y.data.frame <- rbind(y.train.data.frame, y.test.data.frame)

names(y.data.frame) <- "activity"

subject.train.file.path <- file.path(data.dir, "UCI HAR Dataset", "train", "subject_train.txt")
subject.test.file.path <- file.path(data.dir, "UCI HAR Dataset", "test", "subject_test.txt")
subject.train.data.frame <- read.table(subject.train.file.path)
subject.test.data.frame <- read.table(subject.test.file.path)
subject.data.frame <- rbind(subject.train.data.frame, subject.test.data.frame)

names(subject.data.frame) <- "subject"

data.df <- cbind(X.data.frame, y.data.frame, subject.data.frame)

library(dplyr)

data.tibble <- as_tibble(data.df, .name_repair = "minimal")

# Step 2: Extract only the measurements on the mean and standard deviation for each measurement.
data.tibble <- data.tibble %>%
    select(contains("mean()") | contains("std()") | "activity" | "subject")

# Step 3: Use descriptive activity names to name the activities in the data set.
activities.file.path <- file.path(data.dir, "UCI HAR Dataset", "activity_labels.txt")
activities.df <- read.table(activities.file.path, col.names = c("level", "label"))
data.tibble <- data.tibble %>%
    mutate(activity = factor(activity, activities.df$level, activities.df$label))

# Step 4: Appropriately label the data set with descriptive variable names.
names <- names(data.tibble)
names <- tolower(names)
names <- gsub("[-()]", "", names)
names(data.tibble) <- names

# Step 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy.data.tibble = tibble(data.tibble)
tidy.data.tibble <- tidy.data.tibble %>%
    group_by(activity, subject) %>%
    summarize(across(everything(), mean))
write.table(tidy.data.tibble, file.path(data.dir, "data.txt"), row.names = FALSE)
