# Getting-Cleaning-Data-Project
Coursera Project
This script collects and combines data from a UCI dataset containing information on wearable computing data. 
The script does as follows: 

1) row binds together the "train" and "test" data into a single dataframe, referred to as "df". 
2) locates only features related to data on means and standard deviations in the "features" dataset. Then creates a list of relavent row indices satsifying this requirement and subsets "df" with only these rows. Next, "activity_data" is defined as the row bind of the "train" activity data and "test" activity data. Next, "subject_data" is defined as the row bind of the "train" subject data and "test" subject data. Then, "df" is redefined as the column bind of itself with "activity_data" and "subject_data". 
3) each activity ID is changed to the distinct activity name in the "activity" column of "df". 
4) the names of the columns in "df" are systematically cleaned up to be more tidy, by removing dashes, unecessary parentheses, and making all names lowercased. 
5) creates a new dataframe for the averages of each feature on mean & standard deviation across each activity & subject. This new tidy dataframe is called "tidy". 

