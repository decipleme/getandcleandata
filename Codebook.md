###CodeBook - Getting and Cleaning Data, Course Project

####Abstract: 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


####Source:
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


####Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



####Attribute Information:

     subjects
     
          ID of the 30 volunteers who participated in the experiment
          
               length: 2 
               type:   Integer Id of person
               range:  1..30


     activity
     
          Six activities each person performed
          
               length: 1
               type:   character
               range:  ("LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS")


tBodyAcc_mean_axis-X

tBodyAcc_mean_axis-Y
     
tBodyAcc_mean_axis-Z

tGravityAcc_mean_axis-X

tGravityAcc_mean_axis-Y

tGravityAcc_mean_axis-Z
  
tBodyAccJerk_mean_axis-X

tBodyAccJerk_mean_axis-Y

tBodyAccJerk_mean_axis-Z

tBodyGyro_mean_axis-X
    
tBodyGyro_mean_axis-Y

tBodyGyro_mean_axis-Z

tBodyGyroJerk_mean_axis-X

tBodyGyroJerk_mean_axis-Y

tBodyGyroJerk_mean_axis-Z

tBodyAccMag_mean

tGravityAccMag_mean

tBodyAccJerkMag_mean
     
tBodyGyroMag_mean

tBodyGyroJerkMag_mean

fBodyAcc_mean_axis-X

fBodyAcc_mean_axis-Y
     
fBodyAcc_mean_axis-Z

fBodyAccJerk_mean_axis-X

fBodyAccJerk_mean_axis-Y

fBodyAccJerk_mean_axis-Z
 
fBodyGyro_mean_axis-X

fBodyGyro_mean_axis-Y

fBodyGyro_mean_axis-Z

fBodyAccMag_mean
         
fBodyBodyAccJerkMag_mean

fBodyBodyGyroMag_mean

fBodyBodyGyroJerkMag_mean

tBodyAcc_std_axis-X
      
tBodyAcc_std_axis-Y

tBodyAcc_std_axis-Z

tGravityAcc_std_axis-X

tGravityAcc_std_axis-Y
   
tGravityAcc_std_axis-Z

tBodyAccJerk_std_axis-X

tBodyAccJerk_std_axis-Y

tBodyAccJerk_std_axis-Z
  
tBodyGyro_std_axis-X

tBodyGyro_std_axis-Y

tBodyGyro_std_axis-Z

tBodyGyroJerk_std_axis-X
 
tBodyGyroJerk_std_axis-Y

tBodyGyroJerk_std_axis-Z

tBodyAccMag_std

tGravityAccMag_std
       
tBodyAccJerkMag_std

tBodyGyroMag_std

tBodyGyroJerkMag_std

fBodyAcc_std_axis-X
      
fBodyAcc_std_axis-Y

fBodyAcc_std_axis-Z

fBodyAccJerk_std_axis-X

fBodyAccJerk_std_axis-Y
  
fBodyAccJerk_std_axis-Z

fBodyGyro_std_axis-X

fBodyGyro_std_axis-Y

fBodyGyro_std_axis-Z
     
fBodyAccMag_std

fBodyBodyAccJerkMag_std

fBodyBodyGyroMag_std

fBodyBodyGyroJerkMag_std



