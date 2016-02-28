run_analysis <- function() {

    if(!require(dplyr)){
        print("The dplyr package is needed to run this script.");
        print("It will be installed automatically for you.");
        print("Installing dplyr...");
        
        install.packages("dplyr");
        
        if (!require(dplyr)) {
            stop("Could not install dplyr");
        }
    }
        
    # Download data if necessary
    if (!file.exists("./UCI HAR Dataset")){
        print("Downloading data...");
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
        download.file(fileUrl, destfile = "UCI HAR Dataset.zip", mode = "wb");
        unzip("UCI HAR Dataset.zip");
        file.remove("UCI HAR Dataset.zip");
    }

    print("Reading data...");

    # Read in data
    testData <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE);
    trainData <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE);
    # Grab the column names
    colNames <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2];
    
    print("Processing...");
    
    #Set the column names on the tables
    colnames(testData) <- colNames;
    colnames(trainData) <- colNames;
    # Merge tables
    mergedData <- rbind(testData, trainData);
    # Keep only the rows with "mean" or "std" in its name
    filteredData <- mergedData[, grep("(mean|std)\\(\\)", colNames)];
    
    # Cleanup
    rm(colNames, testData, trainData, mergedData);
    
    # Descriptive column names
    colNames <- colnames(filteredData);
    colNames <- gsub("-|\\(\\)", "", colNames);
    colNames <- gsub("mean", "Mean", colNames);
    colNames <- gsub("std", "Std", colNames);
    colnames(filteredData) <- colNames;

    # Grab activity list and merge
    testAct <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)[,1];
    trainAct <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)[,1];
    mergedActs <- c(testAct, trainAct);
    # Grab the activity names
    activityNames <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)[,2];
    # Assign "descriptive names" to the activities
    activity <- activityNames[mergedActs];
    
    # Cleanup
    rm(colNames, testAct, trainAct, mergedActs, activityNames);
    
    # Grab subject lists and merge
    testSub <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)[,1];
    trainSub <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)[,1];
    subject <- c(testSub, trainSub);
    
    # Descriptive set
    finalData <<- cbind(subject, activity, filteredData);
    # Summary set
    summaryData <<- finalData %>% group_by(subject, activity) %>% summarise_each(funs(mean));
    
    print("Writing data...");
    
    # Write data to text file
    write.table(summaryData, file = "tidyData.txt");
    
    print("Done.");
}
