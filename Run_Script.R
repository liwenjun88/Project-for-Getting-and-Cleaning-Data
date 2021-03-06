# Import table of y_test and X_test, rename the column of y_test to avoid duplication
y_test <- read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")
X_test <- read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
names(y_test) <- c("V0")
# Append y_test to X_test to make a dataset for "test"
test <- append(y_test, X_test)

# Import table of y_train and X_train, rename the column of y_train to avoid duplication
y_train <- read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")
X_train <- read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
names(y_train) <- c("V0")
# Append y_test to X_test to make a dataset for "train"
train <- append(y_train, X_train)

#Merge all data in "test" and "train"
Alldata <- merge(test,train,all=TRUE)

#Reshape Alldata to make all testing values in one column for future data analysis.
library(reshape)
mAlldata <- melt(Alldata, id=c("V0"))
finalAlldata <- mAlldata[order(mAlldata$V0),]

#Uses descriptive activity names to name the activities in the data set
finalAlldata$V0[finalAlldata$V0 == 1] = 'WALKING'
finalAlldata$V0[finalAlldata$V0 == 2] = 'WALKING_UPSTAIRS'
finalAlldata$V0[finalAlldata$V0 == 3] = 'WALKING_DOWNSTAIRS'
finalAlldata$V0[finalAlldata$V0 == 4] = 'SITTING'
finalAlldata$V0[finalAlldata$V0 == 5] = 'STANDING'
finalAlldata$V0[finalAlldata$V0 == 6] = 'LAYING'

#Extract only the measurements on the mean and standard deviation for each measurement. 
tapply(finalAlldata$value, finalAlldata$V0, mean)
tapply(finalAlldata$value, finalAlldata$V0, sd)




# Import table of y_test, X_test and subject_test, rename the column of y_test and subject_test to avoid duplication
y_test <- read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")
X_test <- read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
subject_test <- read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
names(y_test) <- c("V0")
names(subject_test) <- c("VS")
#Append X_test and subject_test to y_test to make a dataset for "test_s"
temp_test <- append(subject_test, X_test)
test_s <- append(y_test, temp_test)

# Import table of y_train, X_train and subject_train, rename the column of y_train and subject_train to avoid duplication
y_train<- read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")
X_train <- read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
subject_train <- read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")
names(y_train) <- c("V0")
names(subject_train) <- c("VS")
#Append X_train and subject_train to y_train to make a dataset for "train_s"
temp_train <- append(subject_train, X_train)
train_s <- append(y_train, temp_train)

#Merge all data in "test_s" and "train_s"
Alldata_s <- merge(test_s,train_s,all=TRUE)

#Reshape Alldata_s to make all testing values in one column for future data analysis.
library(reshape)
mAlldata_s <- melt(Alldata_s, id=c("V0","VS"))
finalAlldata_s <- mAlldata_s[order(mAlldata_s$V0),]

#Uses descriptive activity names to name the activities in the data set
finalAlldata_s$V0[finalAlldata_s$V0 == 1] = 'WALKING'
finalAlldata_s$V0[finalAlldata_s$V0 == 2] = 'WALKING_UPSTAIRS'
finalAlldata_s$V0[finalAlldata_s$V0 == 3] = 'WALKING_DOWNSTAIRS'
finalAlldata_s$V0[finalAlldata_s$V0 == 4] = 'SITTING'
finalAlldata_s$V0[finalAlldata_s$V0 == 5] = 'STANDING'
finalAlldata_s$V0[finalAlldata_s$V0 == 6] = 'LAYING'

#Extract average of each variable for each activity and each subject.
tapply(finalAlldata_s$value, list(finalAlldata_s$V0,finalAlldata_s$VS), mean)

