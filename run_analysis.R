
## run_analysis.R - Script created for the "Getting and Cleaning Data"
 # course project
##

run_analysis <- function() {
    library(plyr)
    library(dplyr)
    
    # Step 1: Merges the training and the test sets to create one data set.
    # Load test data
    testsub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    colnames(testsub) <- c("subjects")
    testact <- read.table("./UCI HAR Dataset/test/y_test.txt")
    colnames(testact) <- c("activity")
    testdata <- read.table("./UCI HAR Dataset/test/X_test.txt")
    # bind data with activity and subjects info together
    testdata <- cbind(testact, testdata)
    testdata <- cbind(testsub, testdata)
    
    # Load training data
    trainsub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    colnames(trainsub) <- c("subjects")
    trainact <- read.table("./UCI HAR Dataset/train/y_train.txt")
    colnames(trainact) <- c("activity")
    traindata <- read.table("./UCI HAR Dataset/train/X_train.txt")
    # bind data with activity and subjects info together
    traindata <- cbind(trainact, traindata)
    traindata <- cbind(trainsub, traindata)
    
    # merge the training and test data
    combined_data <- rbind(traindata, testdata)
    
    
    # Step 3: Uses descriptive activity names to name the activities in the
    #         data set read the activity labels file
    activity_lables <- read.table("./UCI HAR Dataset/activity_labels.txt")
    
    for (rIndx in 1:nrow(combined_data)) {
        for (lIndx in 1:nrow(activity_lables)) {
            if (combined_data[rIndx, 2] == activity_lables[lIndx, 1]) {
                combined_data[rIndx, 2] = 
                    as.character(activity_lables[lIndx, 2])
            }
        }
    }
    
     
    # Step 4: Appropriately labels the data set with descriptive variable 
    #         names. 
    features <- read.table("./UCI HAR Dataset/features.txt",
                           colClasses = "character")
    
    # removing duplicate column names from the set
    valid_column_names <- make.names(names = features$V2, unique = TRUE)
    
    # assign the valid column names to the combine data set
    colnames(combined_data)[3:ncol(combined_data)] <- valid_column_names
    
    
    # Step 2: Extracts only the measurements on the mean and standard deviation 
    #         for each measurement.
    dataset <- select(combined_data, matches("subjects"), matches("activity"),
                      contains(".mean.."), contains(".std.."))
    
    
    # Step 5: From the data set in steps above, creates a second, independent 
    #         tidy data set with the average of each variable for each activity
    #         and each subject.
    library(reshape2)
    
    meltset <- melt(dataset, id = c("subjects", "activity"), 
                    measure.vars = names(dataset)[3:ncol(dataset)])
    
    # get the average values of each measurement for each subject and activity
    tidy_dataset <- dcast(meltset, subjects + activity ~ variable, mean)
    # some massaging needed to make the column names more tidy
    names(tidy_dataset) <- sub("\\.mean\\.\\.\\.", "_mean_axis-", 
                               names(tidy_dataset))
    names(tidy_dataset) <- sub("\\.std\\.\\.\\.", "_std_axis-", 
                               names(tidy_dataset))
    names(tidy_dataset) <- sub("\\.mean\\.\\.", "_mean", names(tidy_dataset))
    names(tidy_dataset) <- sub("\\.std\\.\\.", "_std", names(tidy_dataset))
    
    # create a file with the tidy data set
    write.table(tidy_dataset, "./GettingNCleaningData_Project_tidyData.txt", 
                sep = " ", row.names = FALSE)
    return
    
    # Please check the README.md in order to view the tidy data set. 
}
