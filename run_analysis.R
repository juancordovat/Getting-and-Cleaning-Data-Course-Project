##I didn't get it to work in my computer so I had to do it manually
## temp <- tempfile()
## fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## download.file(fileURL, destfile= "./data/UCI HAR Dataset.zip")
## unzip("./data/UCI HAR Dataset.zip", exdir="./data") 

#Open the packages I'll need, in this case dplyr
library(dplyr)

#The next step is to read all files and assign them to a variable
subjectTest <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/test/Y_test.txt")
subjectTrain <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/train/Y_train.txt")
activityLabels <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/activity_labels.txt")

#Explore files to see dimensions and general characteristics
str(subjectTest)
str(xTest)
str(yTest)
str(subjectTrain)
str(xTrain)
str(yTrain)

#Bind the rows of train and test data 
subjectData <- rbind(subjectTest, subjectTrain)
xData <- rbind(xTest, xTrain)
yData <- rbind(yTest, yTrain)

#Change names of columns in subjectData and yData
names(subjectData) <- c("subject")
names(yData) <- c("activity")

#Assign column names with features.txt file.
columnLabels <- read.table("~/Desktop/Archivos R/data/UCI HAR Dataset/features.txt")
columnLabels <- as.vector(columnLabels$V2)
columnLabels <- gsub(pattern="BodyBody", replacement="Body",x=columnLabels)
colnames(xData) <- columnLabels

#Extract mean and Standard deviation columns
activityData <- select(xData, contains("mean()"), contains("std()"))

#Bind all columns
activityData <- cbind(activityData, subjectData, yData)

#Function to change activity categorical values to descriptive string values.
replacecolumn <- function(x,n=1){
  x <- as.vector(x)
  for (i in x){
    if(x[n]==1){
      x[n] <- "WALKING"
    }
    else if (x[n]==2){
      x[n] <- "WALKING_UPSTAIRS"
    }
    else if (x[n]==3){
      x[n] <- "WALKING_DOWNSTAIRS"
    }
    else if (x[n]==4){
      x[n] <- "SITTING"
    }
    else if (x[n]==5){
      x[n] <- "STANDING"
    }
    else if (x[n]==6){
      x[n] <- "LAYING"
    }
    n <- n+1
  }
  return(x)
}

#Use function to change numbers of activities to their corresponding string. 
newActivityColumn <- replacecolumn(activityData$activity)
activityData$activity <- newActivityColumn

#Change column names to make them more understandable
names(activityData) <- gsub("^t","time", names(activityData))
names(activityData) <- gsub("^f", "frequency", names(activityData))
names(activityData) <- gsub("Acc", "Accelerometer", names(activityData))
names(activityData) <- gsub("Gyro", "Gyroscope", names(activityData))
names(activityData) <- gsub("Mag", "Magnitude", names(activityData))
names(activityData) <- gsub("-mean()", "Mean", names(activityData))
names(activityData) <- gsub("-std()", "Std", names(activityData))

#Create the Tidy Data Copy with he statistical calculation and re arranging the rows.
finalData<-aggregate(. ~subject + activity, activityData, mean)
finalData<-finalData[order(finalData$subject,finalData$activity),]

#Create txt file with the the data frame of step 5
write.table(finalData, "FinalTidyData.txt", row.name=FALSE)

