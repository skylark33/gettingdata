Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.



VARIABLE NAME	            DOMAIN 	TYPE	 MEASUREMENT	   JERK SIGNAL	MAGNITUDE  MEASURE	       AXIS
==========================  ==========  =======  ================  ===========  =========  =================== ====

tBodyAcc-mean-X  	    Time	Body	 Acceleration			           Mean	                X
tBodyAcc-mean-Y 	    Time	Body	 Acceleration			           Mean	                Y
tBodyAcc-mean-Z 	    Time	Body	 Acceleration			           Mean	                Z
tGravityAcc-mean-X	    Time	Gravity	 Acceleration			           Mean	                X
tGravityAcc-mean-Y	    Time	Gravity	 Acceleration			           Mean	                Y
tGravityAcc-mean-Z	    Time	Gravity	 Acceleration			           Mean	                Z
tBodyAccJerk-mean-X	    Time	Body	 Acceleration	        X		   Mean	                X
tBodyAccJerk-mean-Y	    Time	Body	 Acceleration	        X		   Mean	                Y
tBodyAccJerk-mean-Z	    Time	Body	 Acceleration	        X		   Mean	                Z
tBodyGyro-mean-X	    Time	Body	 Angular Velocity			   Mean	                X
tBodyGyro-mean-Y	    Time	Body	 Angular Velocity			   Mean	                Y
tBodyGyro-mean-Z	    Time	Body	 Angular Velocity			   Mean	                Z
tBodyGyroJerk-mean-X 	    Time	Body	 Angular Velocity	X		   Mean	                X
tBodyGyroJerk-mean-Y	    Time	Body	 Angular Velocity	X		   Mean	                Y
tBodyGyroJerk-mean-Z	    Time	Body	 Angular Velocity	X		   Mean	                Z
tBodyAccMag-mean	    Time	Body	 Acceleration			    X      Mean	
tGravityAccMag-mean	    Time	Gravity	 Acceleration			    X      Mean	
tBodyAccJerkMag-mean	    Time	Body	 Acceleration	        X	    X	   Mean	
tBodyGyroMag-mean	    Time	Body	 Angular Velocity		    X	   Mean	
tBodyGyroJerkMag-mean	    Time	Body	 Angular Velocity	X	    X	   Mean	
fBodyAcc-mean-X 	    Frequency	Body	 Acceleration			           Mean	                X
fBodyAcc-mean-Y 	    Frequency	Body	 Acceleration			           Mean	                Y
fBodyAcc-mean-Z 	    Frequency	Body	 Acceleration			           Mean	                Z
fBodyAccJerk-mean-X	    Frequency	Body	 Acceleration	        X		   Mean	                X
fBodyAccJerk-mean-Y	    Frequency	Body	 Acceleration	        X		   Mean	                Y
fBodyAccJerk-mean-Z	    Frequency	Body	 Acceleration	        X		   Mean	                Z
fBodyGyro-mean-X	    Frequency	Body	 Angular Velocity			   Mean	                X
fBodyGyro-mean-Y	    Frequency	Body	 Angular Velocity			   Mean	                Y
fBodyGyro-mean-Z	    Frequency	Body	 Angular Velocity			   Mean	                Z
fBodyAccMag-mean	    Frequency	Body	 Acceleration			    X      Mean	
fBodyBodyAccJerkMag-mean    Frequency	Body	 Acceleration	        X	    X	   Mean	
fBodyBodyGyroMag-mean	    Frequency	Body	 Angular Velocity		    X	   Mean	
fBodyBodyGyroJerkMag-mean   Frequency	Body	 Angular Velocity	X	    X	   Mean	
tBodyAcc-std-X  	    Time	Body	 Acceleration			           Standard Deviation   X
tBodyAcc-std-Y   	    Time	Body	 Acceleration			           Standard Deviation	Y
tBodyAcc-std-Z  	    Time	Body	 Acceleration			           Standard Deviation	Z
tGravityAcc-std-X 	    Time	Gravity	 Acceleration			           Standard Deviation	X
tGravityAcc-std-Y	    Time	Gravity	 Acceleration			           Standard Deviation	Y
tGravityAcc-std-Z	    Time	Gravity	 Acceleration			           Standard Deviation	Z
tBodyAccJerk-std-X	    Time	Body	 Acceleration	        X		   Standard Deviation	X
tBodyAccJerk-std-Y	    Time	Body	 Acceleration	        X		   Standard Deviation	Y
tBodyAccJerk-std-Z	    Time	Body	 Acceleration	        X		   Standard Deviation	Z
tBodyGyro-std-X 	    Time	Body	 Angular Velocity			   Standard Deviation	X
tBodyGyro-std-Y 	    Time	Body	 Angular Velocity			   Standard Deviation	Y
tBodyGyro-std-Z	            Time	Body	 Angular Velocity			   Standard Deviation	Z
tBodyGyroJerk-std-X	    Time	Body	 Angular Velocity	X		   Standard Deviation	X
tBodyGyroJerk-std-Y	    Time	Body	 Angular Velocity	X		   Standard Deviation	Y
tBodyGyroJerk-std-Z 	    Time	Body	 Angular Velocity	X		   Standard Deviation	Z
tBodyAccMag-std 	    Time	Body	 Acceleration			    X      Standard Deviation	
tGravityAccMag-std	    Time	Gravity	 Acceleration			    X      Standard Deviation	
tBodyAccJerkMag-std	    Time	Body	 Acceleration	        X	    X	   Standard Deviation	
tBodyGyroMag-std	    Time	Body	 Angular Velocity		    X	   Standard Deviation	
tBodyGyroJerkMag-std	    Time	Body	 Angular Velocity	X	    X	   Standard Deviation	
fBodyAcc-std-X	            Frequency	Body	 Acceleration			           Standard Deviation	X
fBodyAcc-std-Y	            Frequency	Body	 Acceleration			           Standard Deviation	Y
fBodyAcc-std-Z   	    Frequency	Body	 Acceleration			           Standard Deviation	Z
fBodyAccJerk-std-X	    Frequency	Body	 Acceleration	        X		   Standard Deviation	X
fBodyAccJerk-std-Y	    Frequency	Body	 Acceleration	        X		   Standard Deviation	Y
fBodyAccJerk-std-Z	    Frequency	Body	 Acceleration	        X		   Standard Deviation	Z
fBodyGyro-std-X 	    Frequency	Body	 Angular Velocity			   Standard Deviation	X
fBodyGyro-std-Y 	    Frequency	Body	 Angular Velocity			   Standard Deviation	Y
fBodyGyro-std-Z	            Frequency	Body	 Angular Velocity			   Standard Deviation	Z
fBodyAccMag-std 	    Frequency	Body	 Acceleration			    X      Standard Deviation	
fBodyBodyAccJerkMag-std     Frequency	Body	 Acceleration	        X	    X	   Standard Deviation	
fBodyBodyGyroMag-std	    Frequency	Body	 Angular Velocity	 	    X	   Standard Deviation	
fBodyBodyGyroJerkMag-std    Frequency	Body	 Angular Velocity	X	    X	   Standard Deviation	


The mean of these variables are presented for each SUBJECTS (1 to 30) and ACTIVITY_DESCRIPTION (WALKING, 
                                                                                                WALKING_UPSTAIRS,
                                                                                                WALKING_DOWNSTAIRS, 
                                                                                                SITTING, 
                                                                                                STANDING, 
                                                                                                LAYING)
