# **Getting and Cleaning Data Course Project**

## Human Activity Recognition Using Smartphones Data Set - Codebook

###*Our dataset*

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. So our investigators carried an experiment on 30 volunteers between 19 and 48 years. Each person performed 6 activities were they calculated 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

There are 10299 instances with 561 atributes. 

Here is the webpage if you want to know more 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### *The file output*

1. Files downloaded
 * features_info.txt: Shows information about the variables used on the feature vector.
 * features.txt: List of all feature names.
 * activity_labels.txt: Links the activity class labels with their activity name.
 * train/X_train.txt: Training set of all the 561 features. Features are normalized and bounded within [-1,1].
 * train/y_train.txt: Training labels of activities. Range is from 1 to 6.
 * test/X_test.txt: Test set of all the 561 features. Features are normalized and bounded within [-1,1].
 * test/y_test.txt: Test labels of activities. Range is from 1 to 6.
 * train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Range is from 1 to 30.
 * test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Range is from 1 to 30.

2. New Files 
 * tidy_data_smartphone.txt: Is the final result it was all the means of the variables by subject and activity. 
 * smartphone_cleandata.txt: It was all the files merged into a large dataframe with all the values for subjects and activitiyes. 
 
3. Intermediate variables (For all the process refer to README.md)
 * actlabels: has the labels for each activity
 * cell.phone.data: our main dataframe based of both the train and test merging. 
 * cell.phone.datasub: Our database subset derived crom cell.phone.data, it has just the mean and STD variables.
 * data.test: dataframe for all the test data.
 * data.train: dataframe for all the train data
 * headers: the features or name of variables
 * mean.sd.cellphone: it shows us which columns have mean or std in their names
 * name2: descriptive names for all of our variables. 
 * test.data.subject: imported from subject_test.txt
 * test.data.X: imported from X_test.txt
 * test.data.y: imported from y_test.txt
 * tidydata:is a resulting dataframe with the means for each subject and activity - **The result of our script**
 * train.data.subject:imported from subject_train.txt
 * train.data.X:imported from X_train.txt
 * train.data.y:imported from y_train.txt
 
4. Variables you will find
 * Self explanatory it shows the name followed by the apparatus (Accelerometer, Gyroscope), mean/standard deviation and the axis (X,Y,Z)
 [1] "activity"                                                                   
 [2] "subject"                                                                    
 [3] "TimeDomain_BodyAccelerometerelerometer_Mean_X"                              
 [4] "TimeDomain_BodyAccelerometerelerometer_Mean_Y"                              
 [5] "TimeDomain_BodyAccelerometerelerometer_Mean_Z"                              
 [6] "TimeDomain_BodyAccelerometerelerometer_StandardDeviation_X"                 
 [7] "TimeDomain_BodyAccelerometerelerometer_StandardDeviation_Y"                 
 [8] "TimeDomain_BodyAccelerometerelerometer_StandardDeviation_Z"                 
 [9] "TimeDomain_GravityAccelerometerelerometer_Mean_X"                           
[10] "TimeDomain_GravityAccelerometerelerometer_Mean_Y"                           
[11] "TimeDomain_GravityAccelerometerelerometer_Mean_Z"                           
[12] "TimeDomain_GravityAccelerometerelerometer_StandardDeviation_X"              
[13] "TimeDomain_GravityAccelerometerelerometer_StandardDeviation_Y"              
[14] "TimeDomain_GravityAccelerometerelerometer_StandardDeviation_Z"              
[15] "TimeDomain_BodyAccelerometerelerometerJerk_Mean_X"                          
[16] "TimeDomain_BodyAccelerometerelerometerJerk_Mean_Y"                          
[17] "TimeDomain_BodyAccelerometerelerometerJerk_Mean_Z"                          
[18] "TimeDomain_BodyAccelerometerelerometerJerk_StandardDeviation_X"             
[19] "TimeDomain_BodyAccelerometerelerometerJerk_StandardDeviation_Y"             
[20] "TimeDomain_BodyAccelerometerelerometerJerk_StandardDeviation_Z"             
[21] "TimeDomain_BodyGyroscopescope_Mean_X"                                       
[22] "TimeDomain_BodyGyroscopescope_Mean_Y"                                       
[23] "TimeDomain_BodyGyroscopescope_Mean_Z"                                       
[24] "TimeDomain_BodyGyroscopescope_StandardDeviation_X"                          
[25] "TimeDomain_BodyGyroscopescope_StandardDeviation_Y"                          
[26] "TimeDomain_BodyGyroscopescope_StandardDeviation_Z"                          
[27] "TimeDomain_BodyGyroscopescopeJerk_Mean_X"                                   
[28] "TimeDomain_BodyGyroscopescopeJerk_Mean_Y"                                   
[29] "TimeDomain_BodyGyroscopescopeJerk_Mean_Z"                                   
[30] "TimeDomain_BodyGyroscopescopeJerk_StandardDeviation_X"                      
[31] "TimeDomain_BodyGyroscopescopeJerk_StandardDeviation_Y"                      
[32] "TimeDomain_BodyGyroscopescopeJerk_StandardDeviation_Z"                      
[33] "TimeDomain_BodyAccelerometerelerometerMagnitudenitude_mean"                 
[34] "TimeDomain_BodyAccelerometerelerometerMagnitudenitude_std"                  
[35] "TimeDomain_GravityAccelerometerelerometerMagnitudenitude_mean"              
[36] "TimeDomain_GravityAccelerometerelerometerMagnitudenitude_std"               
[37] "TimeDomain_BodyAccelerometerelerometerJerkMagnitudenitude_mean"             
[38] "TimeDomain_BodyAccelerometerelerometerJerkMagnitudenitude_std"              
[39] "TimeDomain_BodyGyroscopescopeMagnitudenitude_mean"                          
[40] "TimeDomain_BodyGyroscopescopeMagnitudenitude_std"                           
[41] "TimeDomain_BodyGyroscopescopeJerkMagnitudenitude_mean"                      
[42] "TimeDomain_BodyGyroscopescopeJerkMagnitudenitude_std"                       
[43] "FrequencyDomain_BodyAccelerometerelerometer_Mean_X"                         
[44] "FrequencyDomain_BodyAccelerometerelerometer_Mean_Y"                         
[45] "FrequencyDomain_BodyAccelerometerelerometer_Mean_Z"                         
[46] "FrequencyDomain_BodyAccelerometerelerometer_StandardDeviation_X"            
[47] "FrequencyDomain_BodyAccelerometerelerometer_StandardDeviation_Y"            
[48] "FrequencyDomain_BodyAccelerometerelerometer_StandardDeviation_Z"            
[49] "FrequencyDomain_BodyAccelerometerelerometer_meanFreq_X"                     
[50] "FrequencyDomain_BodyAccelerometerelerometer_meanFreq_Y"                     
[51] "FrequencyDomain_BodyAccelerometerelerometer_meanFreq_Z"                     
[52] "FrequencyDomain_BodyAccelerometerelerometerJerk_Mean_X"                     
[53] "FrequencyDomain_BodyAccelerometerelerometerJerk_Mean_Y"                     
[54] "FrequencyDomain_BodyAccelerometerelerometerJerk_Mean_Z"                     
[55] "FrequencyDomain_BodyAccelerometerelerometerJerk_StandardDeviation_X"        
[56] "FrequencyDomain_BodyAccelerometerelerometerJerk_StandardDeviation_Y"        
[57] "FrequencyDomain_BodyAccelerometerelerometerJerk_StandardDeviation_Z"        
[58] "FrequencyDomain_BodyAccelerometerelerometerJerk_meanFreq_X"                 
[59] "FrequencyDomain_BodyAccelerometerelerometerJerk_meanFreq_Y"                 
[60] "FrequencyDomain_BodyAccelerometerelerometerJerk_meanFreq_Z"                 
[61] "FrequencyDomain_BodyGyroscopescope_Mean_X"                                  
[62] "FrequencyDomain_BodyGyroscopescope_Mean_Y"                                  
[63] "FrequencyDomain_BodyGyroscopescope_Mean_Z"                                  
[64] "FrequencyDomain_BodyGyroscopescope_StandardDeviation_X"                     
[65] "FrequencyDomain_BodyGyroscopescope_StandardDeviation_Y"                     
[66] "FrequencyDomain_BodyGyroscopescope_StandardDeviation_Z"                     
[67] "FrequencyDomain_BodyGyroscopescope_meanFreq_X"                              
[68] "FrequencyDomain_BodyGyroscopescope_meanFreq_Y"                              
[69] "FrequencyDomain_BodyGyroscopescope_meanFreq_Z"                              
[70] "FrequencyDomain_BodyAccelerometerelerometerMagnitudenitude_mean"            
[71] "FrequencyDomain_BodyAccelerometerelerometerMagnitudenitude_std"             
[72] "FrequencyDomain_BodyAccelerometerelerometerMagnitudenitude_meanFreq"        
[73] "FrequencyDomain_BodyBodyAccelerometerelerometerJerkMagnitudenitude_mean"    
[74] "FrequencyDomain_BodyBodyAccelerometerelerometerJerkMagnitudenitude_std"     
[75] "FrequencyDomain_BodyBodyAccelerometerelerometerJerkMagnitudenitude_meanFreq"
[76] "FrequencyDomain_BodyBodyGyroscopescopeMagnitudenitude_mean"                 
[77] "FrequencyDomain_BodyBodyGyroscopescopeMagnitudenitude_std"                  
[78] "FrequencyDomain_BodyBodyGyroscopescopeMagnitudenitude_meanFreq"             
[79] "FrequencyDomain_BodyBodyGyroscopescopeJerkMagnitudenitude_mean"             
[80] "FrequencyDomain_BodyBodyGyroscopescopeJerkMagnitudenitude_std"              
[81] "FrequencyDomain_BodyBodyGyroscopescopeJerkMagnitudenitude_meanFreq"   

Thank you for reading! Enjoy!
