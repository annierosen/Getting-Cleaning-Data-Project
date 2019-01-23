
##read in all files provided, call them:
activity, features, train, test, ytest, ytrain, etc. 

STEP 1: 
df <- rbind(train, test)

STEP 2: 
#features is the df which has information about all the features in df (or names of the columns) 
#commands below identify the indices for which mean or std appear in the names of the columns 
means <- grep("mean", as.character(features$V2))
stds <- grep("std", as.character(features$V2))
indices <- c(means, stds)
indices <- sort(indices)
df <- df[,indices]

#combines data related to activities performed and subjects doing it
activity_data <- rbind(ytrain,ytest)
subject_data <- rbind(subtrain, subtest) 
df <- cbind(subject_data, activity_data, df)
names(df)[1:2] <- c("Subject", "Activity")

STEP 3: 
activity_column <- df$Activity
activity_column <- gsub("1", "Walking", activity_column)
activity_column <- gsub("2", "Walking Upstairs", activity_column)
activity_column <- gsub("3", "Walking Downstairs", activity_column)
activity_column <- gsub("4", "Sitting", activity_column)
activity_column <- gsub("5", "Standing", activity_column)
activity_column <- gsub("6", "Laying", activity_column)
df[2] <- activity_column 

STEP 4: 
subfeatures <- features[indices,]
subfeatures <- subfeatures$V2
subfeatures <- as.vector(subfeatures)
subfeatures <- gsub("-","", subfeatures)
subfeatures <- gsub("()","", subfeatures, fixed = TRUE) 
subfeatures <- gsub("std","Std", subfeatures)
subfeatures <- gsub("m","M", subfeatures)
names[df] <- c("Subject", "Activity", subfeatures)


STEP 5: 
little <- df %>% group_by(Subject,Activity) %>% summarise_all(mean)
little <- as.data.frame(little)













