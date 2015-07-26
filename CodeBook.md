###CodeBook - Getting and Cleaning Data, Course Project

####Abstract: 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


####Source:
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


####Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


As per the requirements of the Course Project the data obtained from the source have been analysed and transformed into a small and tidy data set with only mean and standard deviation of the measurements extracted from the original data set. The actual values contained in the tidy data set is an average of each variable attribute(described below) for each activity and each subject using the _**melt()**_ and _**dcast()**_ APIs of the **R** _**reshape2**_ package. 


####Attribute Information:

     subjects
          ID of the 30 volunteers who participated in the experiment
               length: 2 
               type:   Integer Id of person
               range:  1..30

     activity
          Activities each person performed during the experiment
               length: 1
               type:   character
               range:  ("LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS")

_NOTE: prefix **'t'** denotes time domain signals and
       prefix **'f'** denotes frequency domain signals_
       
     tBodyAcc_mean_axis-X
          mean of the body acceleration signal along x-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
     
     tBodyAcc_mean_axis-Y
          mean of the body acceleration signal along y-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
     
     tBodyAcc_mean_axis-Z
          mean of the body acceleration signal along z-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAcc_mean_axis-X
          mean of the gravity acceleration signal along x-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAcc_mean_axis-Y
          mean of the gravity acceleration signal along y-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAcc_mean_axis-Z
          mean of the gravity acceleration signal along z-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
  
     tBodyAccJerk_mean_axis-X
          mean of the body linear acceleration derived in time signal along x-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAccJerk_mean_axis-Y
          mean of the body linear acceleration derived in time signal along y-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAccJerk_mean_axis-Z
          mean of the body linear acceleration derived in time signal along z-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyGyro_mean_axis-X
          mean of the body angular velocity signal along x-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values
    
     tBodyGyro_mean_axis-Y
          mean of the body angular velocity signal along y-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyro_mean_axis-Z
          mean of the body angular velocity signal along z-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerk_mean_axis-X
          mean of the body angular velocity derived in time signal along x-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerk_mean_axis-Y
          mean of the body angular velocity derived in time signal along y-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerk_mean_axis-Z
          mean of the body angular velocity derived in time signal along z-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyAccMag_mean
          mean of the body acceleration signal magnitude measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAccMag_mean
          mean of the gravity acceleration signal magnitude measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAccJerkMag_mean
          mean of the body acceleration signal magnitude derived in time measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
     
     tBodyGyroMag_mean
          mean of the body angular velocity signal magnitude measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerkMag_mean
          mean of the body angular velocity derived in time signal magnitude measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     fBodyAcc_mean_axis-X
          mean of the body acceleration signal along x-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAcc_mean_axis-Y
          mean of the body acceleration signal along y-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
     
     fBodyAcc_mean_axis-Z
          mean of the body acceleration signal along z-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAccJerk_mean_axis-X
          mean of the body acceleration derived in frequency signal along x-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAccJerk_mean_axis-Y
          mean of the body acceleration derived in frequency signal along y-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAccJerk_mean_axis-Z
          mean of the body acceleration derived in frequency signal along z-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
 
     fBodyGyro_mean_axis-X
          mean of the body angular velocity signal along x-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyGyro_mean_axis-Y
          mean of the body angular velocity signal along y-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyGyro_mean_axis-Z
          mean of the body angular velocity signal along z-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyAccMag_mean
          mean of the body acceleration signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
         
     fBodyBodyAccJerkMag_mean
          mean of the body acceleration derived in frequency signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyBodyGyroMag_mean
          mean of the body angular velocity signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyBodyGyroJerkMag_mean
          mean of the body angular velocity derived in frequency signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     tBodyAcc_std_axis-X
          standard deviation of the body acceleration signal along x-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
      
     tBodyAcc_std_axis-Y
          standard deviation of the body acceleration signal along y-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAcc_std_axis-Z
          standard deviation of the body acceleration signal along z-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAcc_std_axis-X
          standard deviation of the gravity acceleration signal along x-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAcc_std_axis-Y
          standard deviation of the gravity acceleration signal along y-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
   
     tGravityAcc_std_axis-Z
          standard deviation of the gravity acceleration signal along z-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAccJerk_std_axis-X
          standard deviation of the body acceleration derived in time signal along x-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAccJerk_std_axis-Y
          standard deviation of the body acceleration derived in time signal along y-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyAccJerk_std_axis-Z
          standard deviation of the body acceleration derived in time signal along z-axis measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
  
     tBodyGyro_std_axis-X
          standard deviation of the body angular velocity signal along x-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyro_std_axis-Y
          standard deviation of the body angular velocity signal along y-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyro_std_axis-Z
          standard deviation of the body angular velocity signal along z-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerk_std_axis-X
          standard deviation of the body angular velocity derived in time signal along x-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values
 
     tBodyGyroJerk_std_axis-Y
          standard deviation of the body angular velocity derived in time signal along y-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerk_std_axis-Z
          standard deviation of the body angular velocity derived in time signal along z-axis measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyAccMag_std
          standard deviation of the body acceleration signal magnitude measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tGravityAccMag_std
          standard deviation of the gravity acceleration signal magnitude measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
       
     tBodyAccJerkMag_std
          standard deviation of the body acceleration derived in time signal magnitude measured using accelerometer
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     tBodyGyroMag_std
          standard deviation of the body angular velocity signal magnitude measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     tBodyGyroJerkMag_std
          standard deviation of the body angular velocity derived in time signal magnitude measured using gyroscope
               length: 1
               type:   numeric
               unit:   radians/second
               range:  -1..1 normalized values

     fBodyAcc_std_axis-X
          standard deviation of the body acceleration signal along x-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
      
     fBodyAcc_std_axis-Y
          standard deviation of the body acceleration signal along y-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAcc_std_axis-Z
          standard deviation of the body acceleration signal along z-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAccJerk_std_axis-X
          standard deviation of the body acceleration derived in frequency signal along x-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyAccJerk_std_axis-Y
          standard deviation of the body acceleration derived in frequency signal along y-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values
  
     fBodyAccJerk_std_axis-Z
          standard deviation of the body acceleration derived in frequency signal along z-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyGyro_std_axis-X
          standard deviation of the body angular velocity signal along x-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyGyro_std_axis-Y
          standard deviation of the body angular velocity signal along y-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyGyro_std_axis-Z
          standard deviation of the body angular velocity signal along z-axis after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values
     
     fBodyAccMag_std
          standard deviation of the body acceleration signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyBodyAccJerkMag_std
          standard deviation of the body acceleration derived in frequency signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   'g' standard gravity unit of acceleration
               range:  -1..1 normalized values

     fBodyBodyGyroMag_std
          standard deviation of the body angular velocity signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

     fBodyBodyGyroJerkMag_std
          standard deviation of the body angular velocity derived in frequency signal magnitude after applying Fast Fourier Transform(FFT)
               length: 1
               type:   numeric
               unit:   Hz
               range:  -1..1 normalized values

--------------------------------------------------------------------------------------------

