# UCIHarDataset
Analysis on wearable data from a Samsung device for 30 participants/ 6 activities

The run_analysis.R file prepares a combined dataset for test and train data for 3 main variables - subject ID, activity type, measurements

Step 1 - extract each of the above mentioned datasets into variables in R using read.table
Step 2 - combine test and train data for subject, X and Y using bind
Step 3 - give names to the columns eg. subject ID, activity type, features (from X_data)
Step 4 - replace the Y_data values with actual activity names using ‘if’
Step 5 - extract only the mean and std data for X_data
Step 6 - combine all the data using cbind
Step 6 - prepare a tidy dataset by obtaining averages for each column

