# UCI HAR tidy

Data is taken from the [Human Activity Recognition Using Smartphones Data Set](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and tidied using the following procedure:

1. Merge the test and training data.
2. Filter. Keep only data about the mean and the standard deviation of various measures.
3. Match the subject and the activity associated with each row of data.
4. Make a summary. Take the mean of each variable for each subject and activity.

To run the script,

1. Put the file [run_analysis.R](https://github.com/mmking2048/UCI-HAR-tidy/blob/master/run_analysis.R) into your working directory.
2. Run `source("run_analysis.R")`.
3. Enter `run_analysis()`.

The script will do the following:

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

The tidied data can be found in [tidyData.txt](https://github.com/mmking2048/UCI-HAR-tidy/blob/master/tidyData.txt). A description of all variables and procedures can be found at [CodeBook.md](https://github.com/mmking2048/UCI-HAR-tidy/blob/master/CodeBook.md).

----------

Course project for [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/).
