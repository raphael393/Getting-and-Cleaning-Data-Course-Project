#Human Activity Recognition Using Smartphones Data Set 

#The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
#Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
#wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
#acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.
#The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


##Opening the packages, extracting and uploading the file 
library (readr)
library (data.table)

fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}

## Merging the data
#1 downloading the headers 
headers <- read.csv("UCI HAR Dataset/features.txt", header = FALSE, sep = " ")
headers <- as.character (headers[,2])
#2 Other data
test.data.subject <- read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = ' ')
test.data.X <- read.table("UCI HAR Dataset/test/X_test.txt")
test.data.y <- read.csv("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep = ' ')
data.test <- data.frame(test.data.subject,test.data.y,test.data.X)
names(data.test) <- c(c("Subject","Activity"), headers)

train.data.subject <- read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = ' ')
train.data.X <- read.table("UCI HAR Dataset/train/X_train.txt")
train.data.y <- read.csv("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep = ' ')
data.train <- data.frame(train.data.subject,train.data.y,train.data.X)
names(data.train) <- c(c("Subject","Activity"), headers)

##3 Merging
cell.phone.data <- rbind(data.train,data.test)

##Extracting the mean and standard deviation for each measurement ##
mean.sd.cellphone <- grep('mean|std',headers)
cell.phone.datasub <- cell.phone.data [,c(1,2,mean.sd.cellphone + 2)]

##Descriptive names
actlabels <- read.csv("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")
actlabels <- as.character(actlabels[,2])
cell.phone.datasub$Activity <- actlabels[cell.phone.datasub$Activity]

##Appropiately labels the data set with descriptive names
name2 <- names(cell.phone.datasub)
name2 <- gsub("[(][)]", "", name2)
name2 <- gsub("^t", "TimeDomain_", name2)
name2 <- gsub("^f", "FrequencyDomain_", name2)
name2 <- gsub("Acc", "Accelerometer", name2)
name2 <- gsub("Gyro", "Gyroscope", name2)
name2 <- gsub("Mag", "Magnitude", name2)
name2 <- gsub("-mean-", "_Mean_", name2)
name2 <- gsub("-std-", "_StandardDeviation_", name2)
name2 <- gsub("-", "_", name2)
names(cell.phone.datasub) <- name2

## Creation of a tidy data seat with the average of each variable for 
##each activity and subject##
tidydata <- aggregate(cell.phone.datasub[,3:81], by = list(activity = cell.phone.datasub$Activity, subject = cell.phone.datasub$Subject),FUN = mean)
write.table(x = tidydata, file = "tidy_data_smartphone.txt", row.names = FALSE)

##And of course saving your clean file 
write.table (x=cell.phone.datasub, file= "smartphone_cleandata.txt", row.names = FALSE)

## Thank you for reading!! 