**README - Coursera DataScience Course "Getting and Cleaning Data" Course-Project repository**


####Contents
This repository contains three files

1. Codebook.md -    explains the details about the the layout of the data set, the variables and their definitions, any units of measurement, etc
2. README.md -      explains what the script does and how to run it and view the tidy data created using the script
3. run_analysis.R - the R script that reads a given set of data and massages them into a tidy data


####The Script - run_analysis.R



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
