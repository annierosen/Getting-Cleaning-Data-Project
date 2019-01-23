Explanation of the script:

Preliminary steps: name all datasets. The names for the datasets used were: train, test, ytrain, ytest, subtrain, subtest, activity, features. 

STEP 1: 
uses rowbind to merge the train & test datasets. I call the merged dataframe "df". 

STEP 2: 
finds all rows in the features dataset which has information on mean and standard deviation. I call this list "indices", and I use this list to filter "df" for only these features. Then I column bind the activity and subject data into "df". 

STEP 3: 
in order to label the activity data, I use "gsub" to replace each activity id number with the name of the activity. I call this column "activity_column", and then save the second column in "df" as "activity_column". 

STEP 4: 
to clean up the names in "features", I create a vector called "subfeatures" and the function gsub. Then I rename the names in "df" with "subject", "activity", and "subfeatures". 

STEP 5: 
finally, I group by the features "subject" and "activity" in "df", find the means of all "features" and call the new tidy dataframe "little". 
