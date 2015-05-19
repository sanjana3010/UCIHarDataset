The following variables are used in R:

1. activity - 6 rows, 2 columns. Summary of 6 activities (walking, walking_upstairs, walking_downstairs, sitting, standing, laying) and the codes used to represent them

2. features - 561 rows, 2 columns. Description of types of measurements taken by the device and the codes used to represent them. 

3. subject_test - subject IDs for the test data 

4. X_test - X measurements for the test data

5. Y_test - activity codes for the test data

6. subject_train - subject IDs for the train data 

7. X_train - X measurements for the train data

8. Y_train - activity codes for the train data

9. subject_data - subject IDs for the both test and train data (combination of subject_test and subject_train)

10. Xdata - X measurements for the both test and train data (combination of X_test and X_train)

11. Y_data - Y measurements (activity types for the both test and train data (combination of Y_test and Y_train)

12. Xdata_mean - Xdata columns that have to do with means

13. Xdata_std - Xdata columns that have to do with std deviations

14. Xdata_delete - Xdata columns excluding Xdata_mean and Xdata_std

15. data - combination of subject, activity and X data from both testing and training situations 

16. tidydata_subavg - averages for each subject

17. tidydata_activityavg - averages for each activity

18. tidy data - combination of averages for each subject and activity. 