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

Variable name       | 
--------------------|
"subject" |
"activity" |
"timeBodyAccelerometerMeanX" |
"timeBodyAccelerometerMeanY" |
"timeBodyAccelerometerMeanZ" |
"timeGravityAccelerometerMeanX" |
"timeGravityAccelerometerMeanY" |
"timeGravityAccelerometerMeanZ" |
"timeBodyAccelerometerJerkMeanX" |
"timeBodyAccelerometerJerkMeanY" |
"timeBodyAccelerometerJerkMeanZ" |
"timeBodyGyroscopeMeanX" |
"timeBodyGyroscopeMeanY" |
"timeBodyGyroscopeMeanZ" |
"timeBodyGyroscopeJerkMeanX" |
"timeBodyGyroscopeJerkMeanY" |
"timeBodyGyroscopeJerkMeanZ" |
"timeBodyAccelerometerMagnitudeMean" |
"timeGravityAccelerometerMagnitudeMean" |
"timeBodyAccelerometerJerkMagnitudeMean" |
"timeBodyGyroscopeMagnitudeMean" |
"timeBodyGyroscopeJerkMagnitudeMean" |
"frequencyBodyAccelerometerMeanX" |
"frequencyBodyAccelerometerMeanY" |
"frequencyBodyAccelerometerMeanZ" |
"frequencyBodyAccelerometerJerkMeanX" |
"frequencyBodyAccelerometerJerkMeanY" |
"frequencyBodyAccelerometerJerkMeanZ" |
"frequencyBodyGyroscopeMeanX" |
"frequencyBodyGyroscopeMeanY" |
"frequencyBodyGyroscopeMeanZ" |
"frequencyBodyAccelerometerMagnitudeMean" |
"frequencyBodyAccelerometerJerkMagnitudeMean" |
"frequencyBodyGyroscopeMagnitudeMean" |
"frequencyBodyGyroscopeJerkMagnitudeMean" | 
"timeBodyAccelerometerStdX" |
"timeBodyAccelerometerStdY" |
"timeBodyAccelerometerStdZ" |
"timeGravityAccelerometerStdX" |
"timeGravityAccelerometerStdY" |
"timeGravityAccelerometerStdZ" |
"timeBodyAccelerometerJerkStdX" |
"timeBodyAccelerometerJerkStdY" |
"timeBodyAccelerometerJerkStdZ" |
"timeBodyGyroscopeStdX" |
"timeBodyGyroscopeStdY" |
"timeBodyGyroscopeStdZ" |
"timeBodyGyroscopeJerkStdX" |
"timeBodyGyroscopeJerkStdY" |
"timeBodyGyroscopeJerkStdZ" |
"timeBodyAccelerometerMagnitudeStd" |
"timeGravityAccelerometerMagnitudeStd" |
"timeBodyAccelerometerJerkMagnitudeStd" |
"timeBodyGyroscopeMagnitudeStd" |
"timeBodyGyroscopeJerkMagnitudeStd" |
"frequencyBodyAccelerometerStdX" |
"frequencyBodyAccelerometerStdY" |
"frequencyBodyAccelerometerStdZ" |
"frequencyBodyAccelerometerJerkStdX" |
"frequencyBodyAccelerometerJerkStdY" |
"frequencyBodyAccelerometerJerkStdZ" |
"frequencyBodyGyroscopeStdX" |
"frequencyBodyGyroscopeStdY" |
"frequencyBodyGyroscopeStdZ" |
"frequencyBodyAccelerometerMagnitudeStd" |
"frequencyBodyAccelerometerJerkMagnitudeStd" |
"frequencyBodyGyroscopeMagnitudeStd" |
"frequencyBodyGyroscopeJerkMagnitudeStd" |
