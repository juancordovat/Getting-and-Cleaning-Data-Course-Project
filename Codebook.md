# Code Book
generated on April 23, 2021

## Actions performed on data:
1. Downloading zip file from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Add zip file to the working directory
3. Extract files by unzipping manually. 
4. Open package I needed: dplyr
5. Read all files and assign them to variables
6. Checking general characteristics from every data variable with str() function.
7. Bind rows of corresponding files.
8. Assign the names of variables from features.txt to the corresponding data frame. 
9. Extract columns which are not related with the mean or std using select() function.
10. Bind the columns from the features, subject and activities data frames using cbind().
11. Create a function that can replace the categorical numerical values of the column "activity" to their corresponding descriptive activity name.
12. Replace numbers of activity with their names in the complete data frame. 
13. Changing variable names to more descriptive and understandable ones.
14. Group the data in a new data frame by subject and activity and then calculate their mean. 
15. Create a new txt file with the data of the final data frame. 

## `finalData` variable

### Variables in data

Variable name       | Description
--------------------|------------
`subject`           | ID of subject, int (1-30)
`activity`          | Label of activity, Factor w/ 6 levels
`tBodyAcc-mean()-X`   | the average value for this feature, num (range: -1:1)
`tBodyAcc-mean()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyAcc-mean()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyAcc-std()-X`   | the average value for this feature, num (range: -1:1)
`tBodyAcc-std()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyAcc-std()-Z`   | the average value for this feature, num (range: -1:1)
`tGravityAcc-mean()-X`   | the average value for this feature, num (range: -1:1)
`tGravityAcc-mean()-Y`   | the average value for this feature, num (range: -1:1)
`tGravityAcc-mean()-Z`   | the average value for this feature, num (range: -1:1)
`tGravityAcc-std()-X`   | the average value for this feature, num (range: -1:1)
`tGravityAcc-std()-Y`   | the average value for this feature, num (range: -1:1)
`tGravityAcc-std()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerk-mean()-X`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerk-mean()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerk-mean()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerk-std()-X`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerk-std()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerk-std()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyGyro-mean()-X`   | the average value for this feature, num (range: -1:1)
`tBodyGyro-mean()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyGyro-mean()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyGyro-std()-X`   | the average value for this feature, num (range: -1:1)
`tBodyGyro-std()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyGyro-std()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerk-mean()-X`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerk-mean()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerk-mean()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerk-std()-X`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerk-std()-Y`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerk-std()-Z`   | the average value for this feature, num (range: -1:1)
`tBodyAccMag-mean()`   | the average value for this feature, num (range: -1:1)
`tBodyAccMag-std()`   | the average value for this feature, num (range: -1:1)
`tGravityAccMag-mean()`   | the average value for this feature, num (range: -1:1)
`tGravityAccMag-std()`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerkMag-mean()`   | the average value for this feature, num (range: -1:1)
`tBodyAccJerkMag-std()`   | the average value for this feature, num (range: -1:1)
`tBodyGyroMag-mean()`   | the average value for this feature, num (range: -1:1)
`tBodyGyroMag-std()`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerkMag-mean()`   | the average value for this feature, num (range: -1:1)
`tBodyGyroJerkMag-std()`   | the average value for this feature, num (range: -1:1)
`fBodyAcc-mean()-X`   | the average value for this feature, num (range: -1:1)
`fBodyAcc-mean()-Y`   | the average value for this feature, num (range: -1:1)
`fBodyAcc-mean()-Z`   | the average value for this feature, num (range: -1:1)
`fBodyAcc-std()-X`   | the average value for this feature, num (range: -1:1)
`fBodyAcc-std()-Y`   | the average value for this feature, num (range: -1:1)
`fBodyAcc-std()-Z`   | the average value for this feature, num (range: -1:1)
`fBodyAccJerk-mean()-X`   | the average value for this feature, num (range: -1:1)
`fBodyAccJerk-mean()-Y`   | the average value for this feature, num (range: -1:1)
`fBodyAccJerk-mean()-Z`   | the average value for this feature, num (range: -1:1)
`fBodyAccJerk-std()-X`   | the average value for this feature, num (range: -1:1)
`fBodyAccJerk-std()-Y`   | the average value for this feature, num (range: -1:1)
`fBodyAccJerk-std()-Z`   | the average value for this feature, num (range: -1:1)
`fBodyGyro-mean()-X`   | the average value for this feature, num (range: -1:1)
`fBodyGyro-mean()-Y`   | the average value for this feature, num (range: -1:1)
`fBodyGyro-mean()-Z`   | the average value for this feature, num (range: -1:1)
`fBodyGyro-std()-X`   | the average value for this feature, num (range: -1:1)
`fBodyGyro-std()-Y`   | the average value for this feature, num (range: -1:1)
`fBodyGyro-std()-Z`   | the average value for this feature, num (range: -1:1)
`fBodyAccMag-mean()`   | the average value for this feature, num (range: -1:1)
`fBodyAccMag-std()`   | the average value for this feature, num (range: -1:1)
`fBodyBodyAccJerkMag-mean()`   | the average value for this feature, num (range: -1:1)
`fBodyBodyAccJerkMag-std()`   | the average value for this feature, num (range: -1:1)
`fBodyBodyGyroMag-mean()`   | the average value for this feature, num (range: -1:1)
`fBodyBodyGyroMag-std()`   | the average value for this feature, num (range: -1:1)
`fBodyBodyGyroJerkMag-mean()`   | the average value for this feature, num (range: -1:1)
`fBodyBodyGyroJerkMag-std()`   | the average value for this feature, num (range: -1:1)
