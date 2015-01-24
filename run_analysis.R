## Project for Obtaining & Cleaning Data
## This script manipulates raw data stored in a directory named
## <UCI HAR Dataset>, which is in the working directory.
##
## Acknowledgement:
## The raw data is that wich is described in Anquita, et al (2012). For
## further details see the read.me file. 
##  
## The purpose of the manipulations:
##  1. Merge training and test data sets into one set
##  2. Extract measurements on mean and std deviation for each measurement
##  3. Apply descriptive activity names for activities in the data set
##  4. Label the variables with descriptive names
##  5. Create an independent tidy data set based on the previous steps

## Preliminary steps
## Set the working directory
setwd("./R")
##
## Load test data
X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", header = F)
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = F)
subject_test <- readLines("./UCI HAR Dataset/test/subject_test.txt")

## Load train data
X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", header = F)
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = F)
subject_train <- readLines("./UCI HAR Dataset/train/subject_train.txt")

## Load common files
features <- readLines("./UCI HAR Dataset/features.txt")
activity_labels <- readLines("./UCI HAR Dataset/activity_labels.txt")

## Manipulate test data
  test_dat <- data.frame()
  ## This loop is slow, but it works.
  for (i in 1:nrow(X_test)) {
    y <- scan(con <- textConnection(as.character(X_test[i,1])))
    close(con)
    test_dat <- rbind(test_dat,y[1:6])
  }

## Manipulate test activity data
  Actdat <- vector()
  ## This loop works. Time permitting, eliminate repetition of the number.
  ## I.e., instead of "5,5 Standing" it would be better to have "5, Standing"
  for (i in 1:nrow(y_test)) {
    next_val <- activity_labels[y_test[i,]]
    Actdat <- rbind(Actdat,next_val)
  }

## Assemble the final data frame for TEST
TESTDATA <- cbind(subject_test,Actdat,test_dat)
names(TESTDATA) <- c("Subject","Activity", features[1:6])

## write it to hard drive so that later, I can pick up where I left off
# write.table(TESTDATA, file = "./project/TESTDATA.txt",row.names = F)

## Now do the same thing for the train data.

## Manipulate train data
train_dat <- data.frame()
## This loop is slow, but it works.  Time permitting, look for a better way.
for (i in 1:nrow(X_train)) {
  y <- scan(con <- textConnection(as.character(X_train[i,1])))
  close(con)
  train_dat <- rbind(train_dat,y[1:6])
}

## Manipulate train activity data
Actdat <- vector()
## This loop works. Time permitting, eliminate repetition of the number.
## I.e., instead of "5,5 Standing" it would be better to have "5, Standing"
for (i in 1:nrow(y_train)) {
  next_val <- activity_labels[y_train[i,]]
  Actdat <- rbind(Actdat,next_val)
}

## Assemble the final data frame for TEST
TRAINDATA <- cbind(subject_train,Actdat,train_dat)
names(TRAINDATA) <- c("Subject","Activity", features[1:6])

## write it to hard drive so that later, I can pick up where I left off
# write.table(TRAINDATA, file = "./project/TRAINDATA.txt",row.names = F)

## Put the whole thing together & write to hard drive
Total_data <- rbind(TESTDATA,TRAINDATA)
write.table(Total_data, file = "./all_data.txt",row.names = F)

