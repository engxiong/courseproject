###CodeBook for the Tidy Dataset created, modified and updated from the original codebook found below
66 variables selected from the 561 features based on the mean() and std() measurements.

2 id variables subjectid and activity merged with features/measured variables.

Tidy Dataset comprises 180 observations and 68 variables.

####id variables:

[1] subjectid  
Class:Integer, 1:30

[2] activity    
Class:Factor  
6 Levels: - WALKING
	- WALKING_UPSTAIRS
	- WALKING_DOWNSTAIRS
	- SITTING
	- STANDING
	- LAYING
	
#### measured variables:  
variable names updated from original: 
- use tolower to make all characters of the variable names to lower cases
- remove all spaces and punctuation
- use gsub to substitute string containing freq to frequency 
- use gsub to substitute string beginning with t to time
- use gsub to substitute string beginning with f to frequency
- use gsub to substitute string containing acc to acceleration
- use gsub to substitute string containing gyro to gyroscope
- use gsub to substitute string containing mag to magnitute
- use gsub to substitute string containing std to standarddeviation

Class:numeric
- values of variables containing mean denotes the average of the recordings for each subjectid and each activity
- values of variables containing standarddeviation denotes the standard deviation of the recordings for each subjectid and each activity
- [number] denotes the nth column in the tidy dataset

[3] timebodyaccelerationmeanx  
[4] timebodyaccelerationmeany  
[5] timebodyaccelerationmeanz  
[6] timebodyaccelerationstandarddeviationx  
[7] timebodyaccelerationstandarddeviationy  
[8] timebodyaccelerationstandarddeviationz  
[9] timegravityaccelerationmeanx  
[10] timegravityaccelerationmeany  
[11] timegravityaccelerationmeanz  
[12] timegravityaccelerationstandarddeviationx  
[13] timegravityaccelerationstandarddeviationy  
[14] timegravityaccelerationstandarddeviationz  
[15] timebodyaccelerationjerkmeanx  
[16] timebodyaccelerationjerkmeany  
[17] timebodyaccelerationjerkmeanz  
[18] timebodyaccelerationjerkstandarddeviationx  
[19] timebodyaccelerationjerkstandarddeviationy  
[20] timebodyaccelerationjerkstandarddeviationz  
[21] timebodygyroscopemeanx  
[22] timebodygyroscopemeany  
[23] timebodygyroscopemeanz  
[24] timebodygyroscopestandarddeviationx  
[25] timebodygyroscopestandarddeviationy  
[26] timebodygyroscopestandarddeviationz  
[27] timebodygyroscopejerkmeanx  
[28] timebodygyroscopejerkmeany  
[29] timebodygyroscopejerkmeanz  
[30] timebodygyroscopejerkstandarddeviationx  
[31] timebodygyroscopejerkstandarddeviationy  
[32] timebodygyroscopejerkstandarddeviationz  
[33] timebodyaccelerationmagnitudemean  
[34] timebodyaccelerationmagnitudestandarddeviation  
[35] timegravityaccelerationmagnitudemean  
[36] timegravityaccelerationmagnitudestandarddeviation  
[37] timebodyaccelerationjerkmagnitudemean  
[38] timebodyaccelerationjerkmagnitudestandarddeviation  
[39] timebodygyroscopemagnitudemean  
[40] timebodygyroscopemagnitudestandarddeviation  
[41] timebodygyroscopejerkmagnitudemean  
[42] timebodygyroscopejerkmagnitudestandarddeviation  
[43] frequencybodyaccelerationmeanx  
[44] frequencybodyaccelerationmeany  
[45] frequencybodyaccelerationmeanz  
[46] frequencybodyaccelerationstandarddeviationx  
[47] frequencybodyaccelerationstandarddeviationy  
[48] frequencybodyaccelerationstandarddeviationz  
[49] frequencybodyaccelerationjerkmeanx  
[50] frequencybodyaccelerationjerkmeany  
[51] frequencybodyaccelerationjerkmeanz  
[52] frequencybodyaccelerationjerkstandarddeviationx  
[53] frequencybodyaccelerationjerkstandarddeviationy  
[54] frequencybodyaccelerationjerkstandarddeviationz  
[55] frequencybodygyroscopemeanx  
[56] frequencybodygyroscopemeany  
[57] frequencybodygyroscopemeanz  
[58] frequencybodygyroscopestandarddeviationx  
[59] frequencybodygyroscopestandarddeviationy  
[60] frequencybodygyroscopestandarddeviationz  
[61] frequencybodyaccelerationmagnitudemean  
[62] frequencybodyaccelerationmagnitudestandarddeviation  
[63] frequencybodyaccelerationjerkmagnitudemean  
[64] frequencybodyaccelerationjerkmagnitudestandarddeviation  
[65] frequencybodygyroscopemagnitudemean  
[66] frequencybodygyroscopemagnitudestandarddeviation  
[67] frequencybodygyroscopejerkmagnitudemean  
[68] frequencybodygyroscopejerkmagnitudestandarddeviation  

###Original CodeBook on the features of the database collected from Samsung smartphone accelerometers
####Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal   
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

The complete list of variables of each feature vector is available in 'features.txt'
