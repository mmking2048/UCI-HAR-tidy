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

The tidied data can be found in [tidyData.txt](https://github.com/mmking2048/UCI-HAR-tidy/blob/master/tidyData.txt). A description of all variables and procedures can be found at [CodeBook.md](https://github.com/mmking2048/UCI-HAR-tidy/blob/master/CodeBook.md).

----------

Course project for [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/).