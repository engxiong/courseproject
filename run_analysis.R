
### read train data
### read activity labels for train data
### read subject train data range 1-30

traindatax<-read.table("./train/X_train.txt")
traindatay<-read.table("./train/y_train.txt")
subjecttrainx<-read.table("./train/subject_train.txt")

### merge the train data
mTrainData<- cbind(subjecttrainx,traindatay,traindatax)

### read test data
### read activity labels for test data
### read subject test data range 1-30
testdatax<-read.table("./test/X_test.txt")
testdatay<-read.table("./test/y_test.txt")
subjecttestx<-read.table("./test/subject_test.txt")

### merge the test data
mTestData<- cbind(subjecttestx,testdatay,testdatax)

### merge test data and train data into one large dataset
mergeData<- rbind(mTrainData,mTestData)

### read the list of features names of the 561 variables/features in the datasets
featurenames<-read.table("./features.txt")
Vfeaturenames<- as.vector(featurenames[,2])

### read the list of 6 activity labels names
activitynames<-read.table("./activity_labels.txt")
vactivitynames<-as.vector(activitynames[,2])

### Changing the column names for the subject and activity column 1&2
names(mergeData)[c(1:2)]<-c("subjectid","activity")
names(mergeData)[c(3:563)]<-Vfeaturenames

### Use descriptive names to name activity names in the mergeData set by
#### converting the activity column into factor and renaming them
mergeData$activity<-as.factor(mergeData$activity)
levels(mergeData$activity) = vactivitynames

### Extracting only the measurements on 
### the mean and standard deviation for each measurement

mergeDataset<-mergeData[,grepl("activity|subject|[Mm]ean\\(\\)|[Ss]td\\(\\)",names(mergeData))]

###Labeling the variables names in the mergeDataset with descriptive names

Columnnames<-colnames(mergeDataset)
Columnnames<-tolower(Columnnames)
Columnnames<-gsub("[[:space:]|[:punct:]]","",Columnnames)
Columnnames<-gsub("freq","frequency",Columnnames)
Columnnames<-gsub("^t","time",Columnnames)
Columnnames<-gsub("^f","frequency",Columnnames)
Columnnames<-gsub("acc","acceleration",Columnnames)
Columnnames<-gsub("gyro","gyroscope",Columnnames)
Columnnames<-gsub("mag","magnitude",Columnnames)
Columnnames<-gsub("std","standarddeviation",Columnnames)
colnames(mergeDataset)<-Columnnames

#### Group mergeDataset by subject_id and activity 
#### and average the values for each variables 
#### with melt and dcast function
library(reshape2)
meltdata<-melt(mergeDataset,id=1:2,measured=3:68)

dcastdata<-dcast(meltdata,...~variable,mean)

#### Independent tidy data set created
Tidydata<- write.table(dcastdata,"./tidydata.txt",row.name=FALSE)

### to see the final tidy dataset: tidydataset<-read.table("./tidydata.txt",header=TRUE)

###### END ######