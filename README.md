# **Getting and Cleaning Data Course Project**

## Human Activity Recognition Using Smartphones Data Set 

###*Our dataset*

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. So our investigators carried an experiment on 30 volunteers between 19 and 48 years. Each person performed 6 activities were they calculated 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

Here is the webpage if you want to know more 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


###*So, what's the plan*

We will create a code that does **all** of the following 

* Merges the training and the test sets to create one data set.

* Extracts only the measurements on the mean and standard deviation for each measurement.

* Uses descriptive activity names to name the activities in the data set

* Appropriately labels the data set with descriptive variable names.

* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


###*How does the script work?*

* *What do you need?*
 1. Have this file open and download the following files: **run_analysis.R**
 1. (Optional) You can dowload the data file or use our script to download the data
 1. Unfortunately just Windows will work straight, if you have a MAC might need to do some arranges on the file paths. 
 
* *Next steps*
 1. Open Rstudio/R (I used version of R 3.5.1 and R studio 1.1.4). 
 1. Select your desired working directory (The script will download some files so make sure you know were are you working)
 1. Execute our script and see the magic happens!
 
* *So what happened? What are all of those files?*
 1. It opened the packages we needed to work today - Readr and data.table
 1. Dowloaded the file named *UCI HAR Dataset.zip* and then decompressed it in a multitude of files (See codebook for more details)
  * activity_labels.txt
  * features.txt
  * features_info.txt
  * README.txt
  * Test --> X_test.txt, y_test.txt, subject_test.txt, (other folder not needed)
  * Train --> X_train.txt, y_train.txt, subject_train.txt, (other folder not needed) 
 3. It first will read all the headers we need (the names of our variables) and will call it a variable "headers" 
 4. Then it saved all of the files from the folders into elements in R and divided our data into two data frames. A test dataframe and a train data frame. 
 5. We merge the dataframes using the rbind function and we have a dataframe that we called **cell.phone.data**
 6. Using our grep function we then extrated from our 500+ variables just the ones that are related to the mean and the standard deviation and then we made a new data frame with just this columns. This one is called **cell.phone.datasub**. It will show you just 81 variables. 
 7. Our activity column has still numbers so we take the activity labels file and made it a character called **actlabels** and then we changed this coded numbers into the actual 6 activities. 
 8. As this long variables have convoluted names, using the Gsub function we organized them so that they are more readable (refer to the Codebook)
 9. (Almost there!) We took each subject and we calculate the mean for each activity and we saved it in a file called **tidy_data_smartphone.txt**
 10. We save our previous data set (the **cell.phone.datasub**) into a file called **smartphone_cleandata.txt**
 
 And voila! everything is now saved in your computer and ready for analysis! 
 
 
 
