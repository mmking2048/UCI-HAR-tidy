# Codebook

## Procedure
### Summary of procedure
1. Merge the test and training data.
2. Filter. Keep only data about the mean and the standard deviation of various measures.
3. Match the subject and the activity associated with each row of data.
4. Make a summary. Take the mean of each variable for each subject and activity.

### Detailed procedures
1. Load the [dplyr](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html) package. Install it if not installed.
2. Download the data into a folder called "UCI HAR Dataset", located in the working directory.
3. Read the data from files `test/X_test.txt` and `train/X_train.txt` within the folder and merge them.
4. Filter the data, keeping only the columns with information about the mean or standard deviation of measures.
5. Rename the columns to be more descriptive.
6. Read the activity data from files `test/y_test.txt` and `train/y_train.txt`. Merge them.
7. Read the subject data from files `test/subject_test.txt` and `train/subject_train.txt`. Merge them.
8. Attach the activity and subject data to the data set. This final data is stored in a data frame called `finalData`.
9. Group the information in `finalData` by the subject and activity. Take the mean of each variable in each group. This summary set is stored in a data frame called `summaryData`.
10. Write `summaryData` to a file called `tidyData.txt`, located in the working directory.

----------

## Data
The tidied data is located in [tidyData.txt](https://github.com/mmking2048/UCI-HAR-tidy/blob/master/tidyData.txt). Read the file using `read.table("tidyData.txt")`.

The table has 180 rows and 68 columns. It includes the average of each measure over several trials grouped by subject and activity.

----------

## Variables
### Identifiers
- subject: Subject ID
- activity: Activity performed
    - Walking
    - Walking upstairs
    - Walking downstairs
    - Sitting
    - Standing
    - Laying (sic)

### Measures
- TimeBodyAccMeanX
- TimeBodyAccMeanY
- TimeBodyAccMeanZ
- TimeBodyAccStdDevX
- TimeBodyAccStdDevY
- TimeBodyAccStdDevZ
    
- TimeGravityAccMeanX
- TimeGravityAccMeanY
- TimeGravityAccMeanZ
- TimeGravityAccStdDevX
- TimeGravityAccStdDevY
- TimeGravityAccStdDevZ
    
- TimeBodyAccJerkMeanX
- TimeBodyAccJerkMeanY
- TimeBodyAccJerkMeanZ
- TimeBodyAccJerkStdDevX
- TimeBodyAccJerkStdDevY
- TimeBodyAccJerkStdDevZ
    
- TimeBodyGyroMeanX
- TimeBodyGyroMeanY
- TimeBodyGyroMeanZ
- TimeBodyGyroStdDevX
- TimeBodyGyroStdDevY
- TimeBodyGyroStdDevZ
    
- TimeBodyGyroJerkMeanX
- TimeBodyGyroJerkMeanY
- TimeBodyGyroJerkMeanZ
- TimeBodyGyroJerkStdDevX
- TimeBodyGyroJerkStdDevY
- TimeBodyGyroJerkStdDevZ
    
- TimeBodyAccMagMean
- TimeBodyAccMagStdDev

- TimeGravityAccMagMean
- TimeGravityAccMagStdDev

- TimeBodyAccJerkMagMean
- TimeBodyAccJerkMagStdDev

- TimeBodyGyroMagMean
- TimeBodyGyroMagStdDev

- TimeBodyGyroJerkMagMean
- TimeBodyGyroJerkMagStdDev

- FrequencyBodyAccMeanX
- FrequencyBodyAccMeanY
- FrequencyBodyAccMeanZ
- FrequencyBodyAccStdDevX
- FrequencyBodyAccStdDevY
- FrequencyBodyAccStdDevZ

- FrequencyBodyAccJerkMeanX
- FrequencyBodyAccJerkMeanY
- FrequencyBodyAccJerkMeanZ
- FrequencyBodyAccJerkStdDevX
- FrequencyBodyAccJerkStdDevY
- FrequencyBodyAccJerkStdDevZ

- FrequencyBodyGyroMeanX
- FrequencyBodyGyroMeanY
- FrequencyBodyGyroMeanZ
- FrequencyBodyGyroStdDevX
- FrequencyBodyGyroStdDevY
- FrequencyBodyGyroStdDevZ

- FrequencyBodyAccMagMean
- FrequencyBodyAccMagStdDev

- FrequencyBodyBodyAccJerkMagMean
- FrequencyBodyBodyAccJerkMagStdDev

- FrequencyBodyBodyGyroMagMean
- FrequencyBodyBodyGyroMagStdDev

- FrequencyBodyBodyGyroJerkMagMean
- FrequencyBodyBodyGyroJerkMagStdDev
