**README - Coursera DataScience Course "Getting and Cleaning Data" Course-Project repository**


####Contents
This repository contains three files

1. **Codebook.md** -    explains the details about the the layout of the data set, the variables and their definitions, any units of measurement, etc
2. **README.md** -      explains what the script does and how to run it and view the tidy data created using the script
3. **run_analysis.R** - the R script that reads a given set of data and massages them into a tidy data

--------------------------------------------------------------------------------------------


####The Script - run_analysis.R
The script reads the data collected in different files during the training and test phases of data collection.
After sourcing the script in a given directory, it can be run by - 
```{r}
  run_analysis()
```
The pre-requisites for this operation is -

1. The data downloaded for the project [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) should be unzipped in the _current working directory_ and named "UCI HAR Dataset"
2. The _base_ package of R should be loaded. The script loads the required libraries as and when needed in the course of analysing the data


Processing is done in steps specified in the project description.

**Step 1: Merges the training and the test sets to create one data set.**

The files that are read to load the test data are -

	* "./UCI HAR Dataset/test/subject_test.txt" - contains the test subject Ids
	* "./UCI HAR Dataset/test/y_test.txt"       - contains the test activities performed

	                                              by the subjects
	* "./UCI HAR Dataset/test/X_test.txt"       - contains the test measurements collected 
	                                              from the accelerometers from the Samsung 
	                                              Galaxy S smartphone


The files that are read to load the training data are -

	* "./UCI HAR Dataset/train/subject_train.txt" - contains the training subject Ids
	* "./UCI HAR Dataset/train/y_train.txt"       - contains the training activities performed 
	                                                by the subjects
	* "./UCI HAR Dataset/train/X_train.txt"       - contains the measurements collected 

	                                                during training phase from the accelerometers 
	                                                from the Samsung Galaxy S smartphone


Both training and test phase data are combined first with the subjects and activity data column wise respectively. The combined training and test data is then stacked upon to form a complete data set. 



**Step 3: Uses descriptive activity names to name the activities in the data set.**

Activity labels are loaded from the file -

	* "./UCI HAR Dataset/activity_labels.txt"     - contains the labels for the 6 activities
This data is replaced in the combined data's _activity_ column



**Step 4: Appropriately labels the data set with descriptive variable names.**

In this step the script reads - 

	* "./UCI HAR Dataset/features.txt"            - contains the measurements labels
This data is needed to name the columns of the combined data. First, unique names are created to avoid duplicate column names. Then those names are assigned to the columns.



**Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.**

Script then uses _**select()**_ function of the _**dplyr**_ package to grab only the necessary columns form the combined data set to fulfil the requirement of step 2 of the rubric


_**NOTE:** This completes the 4 steps to combine the required data. I have taken the liberty to slightly change the order of the rubric steps in order to achive my result, which I felt was more intuitive._



**Step 5: From the data set in steps above, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**

Script uses the _**reshape2**_ package's APIs to process the data set further.

	* It first, melts the data set using _**melt()**_ api with _ID=c("subjects", "activity")_ and the rest of the columns as _measure.vars_
	* Next, the melted data set is used to _**dcast()**_ the _subjects_ and _activity_ data against the measurements variable applying function **mean** to each

This gives the tidy data set. Some more massaging of the resultant column names gives a better and tidy looking data set.
The tidy data set is then written to a text file using _**write.table**_ api as suggested in the rubric.


--------------------------------------------------------------------------------------------


####View the tidy data

The tidy data set created using the script mentioned above can be located at this address -
["https://s3.amazonaws.com/coursera-uploads/user-be66da6738cbf43b64a02ec7/975114/asst-3/787e28f0331211e59d195d411c7d4bdc.txt"](https://s3.amazonaws.com/coursera-uploads/user-be66da6738cbf43b64a02ec7/975114/asst-3/787e28f0331211e59d195d411c7d4bdc.txt)

In order to view the data set in RStudio, please run the below mentioned commands:
```{r}
  fileUrl <- ("https://s3.amazonaws.com/coursera-uploads/user-be66da6738cbf43b64a02ec7/
              975114/asst-3/787e28f0331211e59d195d411c7d4bdc.txt")
  fileUrl <- sub("^https", "http", fileUrl)
  data <- read.table(url(fileUrl), colClasses = "character", 
                     check.names = FALSE, header = TRUE)
  View(data)
```
*courtesy:-["https://class.coursera.org/getdata-030/forum/thread?thread_id=107"](https://class.coursera.org/getdata-030/forum/thread?thread_id=107)*

This will show a tidy data set with the dimention of 180x68, going by each of the 30 subjects that helped in either during the training and test phase of data collection against each of the 6 activities they carried out during the observation.    

--------------------------------------------------------------------------------------------


