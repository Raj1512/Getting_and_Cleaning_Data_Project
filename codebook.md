---
Title: "Codebook Getting and Cleaning Data Course"
Author: Raj Kumar
Date: April 26, 2015
Output:
  html_document:
    keep_md: yes
---

## Project Description
 This project creates tidy dataset for further analysis. I downloaded the data set into my working directory and unzip it before attempting this code.
##Study design and data processing
 The data was captured from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and description about this data can be found at 
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
###Collection of the raw data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Notes on the original (raw) data 
Following files have detailed info about the raw data:
- 'README.txt' : General information about the project and data.

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

##Creating the tidy datafile

###Guide to create the tidy data file
* Pre work: 
* Get the data from the zip file, so download contents from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Gather the relevant files into a folder to be named UCI HAR Dataset in your working directory.
* 1. Read the data files into R:
* Subject:
* 2. Merge all that data into one dataset
* 3. Name the measurement columns after the feature names, and give names to the id columns
* 4. Create a new data frame whose measurement columns contain only mean and st. dev features
* more housekeeping, remove newDatafrme
* 5. Trim the rows to the 180 needed to show mean values for each subject-activity pair
* 6. Rename tidyframe data and output the data to Samsung_Data.txt
* end of script, please see the cleaned data file Samsung_Data.txt in the working directory
###Cleaning of the data
he resulting clean dataset is in this repository at: `Samsung_data.txt`. 
It contains one row for each subject/activity pair and columns for subject, activity, and each feature that was a mean or standard deviation from the original dataset.

##Description of the variables in the Samsung_data.txt file
General description of the file:
 * Dimensions of the dataset
 There are 68 variables and 180 records
 * Summary of the data
    subject        activity  tBodyAcc-mean()-X tBodyAcc-mean()-Y   tBodyAcc-mean()-Z 
 Min.   : 1.0   Min.   :1.0   Min.   :0.2216    Min.   :-0.040514   Min.   :-0.15251  
 1st Qu.: 8.0   1st Qu.:2.0   1st Qu.:0.2712    1st Qu.:-0.020022   1st Qu.:-0.11207  
 Median :15.5   Median :3.5   Median :0.2770    Median :-0.017262   Median :-0.10819  
 Mean   :15.5   Mean   :3.5   Mean   :0.2743    Mean   :-0.017876   Mean   :-0.10916  
 3rd Qu.:23.0   3rd Qu.:5.0   3rd Qu.:0.2800    3rd Qu.:-0.014936   3rd Qu.:-0.10443  
 Max.   :30.0   Max.   :6.0   Max.   :0.3015    Max.   :-0.001308   Max.   :-0.07538  
 tBodyAcc-std()-X  tBodyAcc-std()-Y   tBodyAcc-std()-Z  tGravityAcc-mean()-X tGravityAcc-mean()-Y
 Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800      Min.   :-0.47989    
 1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.: 0.8376      1st Qu.:-0.23319    
 Median :-0.7526   Median :-0.50897   Median :-0.6518   Median : 0.9208      Median :-0.12782    
 Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756   Mean   : 0.6975      Mean   :-0.01621    
 3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.: 0.9425      3rd Qu.: 0.08773    
 Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090   Max.   : 0.9745      Max.   : 0.95659    
 tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y tGravityAcc-std()-Z
 Min.   :-0.49509     Min.   :-0.9968     Min.   :-0.9942     Min.   :-0.9910    
 1st Qu.:-0.11726     1st Qu.:-0.9825     1st Qu.:-0.9711     1st Qu.:-0.9605    
 Median : 0.02384     Median :-0.9695     Median :-0.9590     Median :-0.9450    
 Mean   : 0.07413     Mean   :-0.9638     Mean   :-0.9524     Mean   :-0.9364    
 3rd Qu.: 0.14946     3rd Qu.:-0.9509     3rd Qu.:-0.9370     3rd Qu.:-0.9180    
 Max.   : 0.95787     Max.   :-0.8296     Max.   :-0.6436     Max.   :-0.6102    
 tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X
 Min.   :0.04269       Min.   :-0.0386872    Min.   :-0.067458     Min.   :-0.9946     
 1st Qu.:0.07396       1st Qu.: 0.0004664    1st Qu.:-0.010601     1st Qu.:-0.9832     
 Median :0.07640       Median : 0.0094698    Median :-0.003861     Median :-0.8104     
 Mean   :0.07947       Mean   : 0.0075652    Mean   :-0.004953     Mean   :-0.5949     
 3rd Qu.:0.08330       3rd Qu.: 0.0134008    3rd Qu.: 0.001958     3rd Qu.:-0.2233     
 Max.   :0.13019       Max.   : 0.0568186    Max.   : 0.038053     Max.   : 0.5443     
 tBodyAccJerk-std()-Y tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y tBodyGyro-mean()-Z
 Min.   :-0.9895      Min.   :-0.99329     Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245  
 1st Qu.:-0.9724      1st Qu.:-0.98266     1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475  
 Median :-0.7756      Median :-0.88366     Median :-0.02871   Median :-0.07318   Median : 0.08512  
 Mean   :-0.5654      Mean   :-0.73596     Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744  
 3rd Qu.:-0.1483      3rd Qu.:-0.51212     3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177  
 Max.   : 0.3553      Max.   : 0.03102     Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910  
 tBodyGyro-std()-X tBodyGyro-std()-Y tBodyGyro-std()-Z tBodyGyroJerk-mean()-X
 Min.   :-0.9943   Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721      
 1st Qu.:-0.9735   1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322      
 Median :-0.7890   Median :-0.8017   Median :-0.8010   Median :-0.09868      
 Mean   :-0.6916   Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606      
 3rd Qu.:-0.4414   3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110      
 Max.   : 0.2677   Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209      
 tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y
 Min.   :-0.07681       Min.   :-0.092500      Min.   :-0.9965       Min.   :-0.9971      
 1st Qu.:-0.04552       1st Qu.:-0.061725      1st Qu.:-0.9800       1st Qu.:-0.9832      
 Median :-0.04112       Median :-0.053430      Median :-0.8396       Median :-0.8942      
 Mean   :-0.04269       Mean   :-0.054802      Mean   :-0.7036       Mean   :-0.7636      
 3rd Qu.:-0.03842       3rd Qu.:-0.048985      3rd Qu.:-0.4629       3rd Qu.:-0.5861      
 Max.   :-0.01320       Max.   :-0.006941      Max.   : 0.1791       Max.   : 0.2959      
 tBodyGyroJerk-std()-Z tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean()
 Min.   :-0.9954       Min.   :-0.9865    Min.   :-0.9865   Min.   :-0.9865      
 1st Qu.:-0.9848       1st Qu.:-0.9573    1st Qu.:-0.9430   1st Qu.:-0.9573      
 Median :-0.8610       Median :-0.4829    Median :-0.6074   Median :-0.4829      
 Mean   :-0.7096       Mean   :-0.4973    Mean   :-0.5439   Mean   :-0.4973      
 3rd Qu.:-0.4741       3rd Qu.:-0.0919    3rd Qu.:-0.2090   3rd Qu.:-0.0919      
 Max.   : 0.1932       Max.   : 0.6446    Max.   : 0.4284   Max.   : 0.6446      
 tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std() tBodyGyroMag-mean()
 Min.   :-0.9865      Min.   :-0.9928        Min.   :-0.9946       Min.   :-0.9807    
 1st Qu.:-0.9430      1st Qu.:-0.9807        1st Qu.:-0.9765       1st Qu.:-0.9461    
 Median :-0.6074      Median :-0.8168        Median :-0.8014       Median :-0.6551    
 Mean   :-0.5439      Mean   :-0.6079        Mean   :-0.5842       Mean   :-0.5652    
 3rd Qu.:-0.2090      3rd Qu.:-0.2456        3rd Qu.:-0.2173       3rd Qu.:-0.2159    
 Max.   : 0.4284      Max.   : 0.4345        Max.   : 0.4506       Max.   : 0.4180    
 tBodyGyroMag-std() tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-X
 Min.   :-0.9814    Min.   :-0.99732        Min.   :-0.9977        Min.   :-0.9952  
 1st Qu.:-0.9476    1st Qu.:-0.98515        1st Qu.:-0.9805        1st Qu.:-0.9787  
 Median :-0.7420    Median :-0.86479        Median :-0.8809        Median :-0.7691  
 Mean   :-0.6304    Mean   :-0.73637        Mean   :-0.7550        Mean   :-0.5758  
 3rd Qu.:-0.3602    3rd Qu.:-0.51186        3rd Qu.:-0.5767        3rd Qu.:-0.2174  
 Max.   : 0.3000    Max.   : 0.08758        Max.   : 0.2502        Max.   : 0.5370  
 fBodyAcc-mean()-Y  fBodyAcc-mean()-Z fBodyAcc-std()-X  fBodyAcc-std()-Y   fBodyAcc-std()-Z 
 Min.   :-0.98903   Min.   :-0.9895   Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872  
 1st Qu.:-0.95361   1st Qu.:-0.9619   1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459  
 Median :-0.59498   Median :-0.7236   Median :-0.7470   Median :-0.51338   Median :-0.6441  
 Mean   :-0.48873   Mean   :-0.6297   Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824  
 3rd Qu.:-0.06341   3rd Qu.:-0.3183   3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655  
 Max.   : 0.52419   Max.   : 0.2807   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871  
 fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z fBodyAccJerk-std()-X
 Min.   :-0.9946       Min.   :-0.9894       Min.   :-0.9920       Min.   :-0.9951     
 1st Qu.:-0.9828       1st Qu.:-0.9725       1st Qu.:-0.9796       1st Qu.:-0.9847     
 Median :-0.8126       Median :-0.7817       Median :-0.8707       Median :-0.8254     
 Mean   :-0.6139       Mean   :-0.5882       Mean   :-0.7144       Mean   :-0.6121     
 3rd Qu.:-0.2820       3rd Qu.:-0.1963       3rd Qu.:-0.4697       3rd Qu.:-0.2475     
 Max.   : 0.4743       Max.   : 0.2767       Max.   : 0.1578       Max.   : 0.4768     
 fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y fBodyGyro-mean()-Z
 Min.   :-0.9905      Min.   :-0.993108    Min.   :-0.9931    Min.   :-0.9940    Min.   :-0.9860   
 1st Qu.:-0.9737      1st Qu.:-0.983747    1st Qu.:-0.9697    1st Qu.:-0.9700    1st Qu.:-0.9624   
 Median :-0.7852      Median :-0.895121    Median :-0.7300    Median :-0.8141    Median :-0.7909   
 Mean   :-0.5707      Mean   :-0.756489    Mean   :-0.6367    Mean   :-0.6767    Mean   :-0.6044   
 3rd Qu.:-0.1685      3rd Qu.:-0.543787    3rd Qu.:-0.3387    3rd Qu.:-0.4458    3rd Qu.:-0.2635   
 Max.   : 0.3498      Max.   :-0.006236    Max.   : 0.4750    Max.   : 0.3288    Max.   : 0.4924   
 fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z fBodyAccMag-mean() fBodyAccMag-std()
 Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.9868    Min.   :-0.9876  
 1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.9560    1st Qu.:-0.9452  
 Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.6703    Median :-0.6513  
 Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.5365    Mean   :-0.6210  
 3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.:-0.1622    3rd Qu.:-0.3654  
 Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.5866    Max.   : 0.1787  
 fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std() fBodyBodyGyroMag-mean()
 Min.   :-0.9940            Min.   :-0.9944           Min.   :-0.9865        
 1st Qu.:-0.9770            1st Qu.:-0.9752           1st Qu.:-0.9616        
 Median :-0.7940            Median :-0.8126           Median :-0.7657        
 Mean   :-0.5756            Mean   :-0.5992           Mean   :-0.6671        
 3rd Qu.:-0.1872            3rd Qu.:-0.2668           3rd Qu.:-0.4087        
 Max.   : 0.5384            Max.   : 0.3163           Max.   : 0.2040        
 fBodyBodyGyroMag-std() fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
 Min.   :-0.9815        Min.   :-0.9976             Min.   :-0.9976           
 1st Qu.:-0.9488        1st Qu.:-0.9813             1st Qu.:-0.9802           
 Median :-0.7727        Median :-0.8779             Median :-0.8941           
 Mean   :-0.6723        Mean   :-0.7564             Mean   :-0.7715           
 3rd Qu.:-0.4277        3rd Qu.:-0.5831             3rd Qu.:-0.6081           
 Max.   : 0.2367        Max.   : 0.1466             Max.   : 0.2878           

 - Variables present in the dataset
180 observations and 68 variables

Short description of what the variable describes.
Variable1	subject  - Participant  identification number                
variable2	activity  -   The activity performed by the subjects. There are sixt activity levels : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING               
Variable3	 "tBodyAcc-mean()-X"          
Variable4	tBodyAcc-mean()-Y          
Variable5	 "tBodyAcc-mean()-Z"         
Variable6	 "tBodyAcc-std()-X"           
Variable7	 "tBodyAcc-std()-Y"          
Variable8	 "tBodyAcc-std()-Z"         
Variable9	 "tGravityAcc-mean()-X"       
Variable10	tGravityAcc-mean()-Y  
Variable11	tGravityAcc-mean()-Z    
Variable12	tGravityAcc-std()-X        
Variable13	tGravityAcc-std()-Y      
Variable14	tGravityAcc-std()-Z      
Variable15	tBodyAccJerk-mean()-X      
Variable16	tBodyAccJerk-mean()-Y   
Variable17	tBodyAccJerk-mean()-Z   
Variable18	tBodyAccJerk-std()-X       
Variable19	tBodyAccJerk-std()-Y   
Variable20	tBodyAccJerk-std()-Z    
Variable21	tBodyGyro-mean()-X         
Variable22	tBodyGyro-mean()-Y      
Variable23	tBodyGyro-mean()-Z     
Variable24	tBodyGyro-std()-X          
Variable25	tBodyGyro-std()-Y       
Variable26	tBodyGyro-std()-Z        
Variable27	tBodyGyroJerk-mean()-X     
Variable28	tBodyGyroJerk-mean()-Y  
Variable29	tBodyGyroJerk-mean()-Z   
Variable30	tBodyGyroJerk-std()-X      
Variable31	tBodyGyroJerk-std()-Y   
Variable32	tBodyGyroJerk-std()-Z    
Variable33	tBodyAccMag-mean()         
Variable34	tBodyAccMag-std()      
Variable35	tGravityAccMag-mean()    
Variable36	tGravityAccMag-std()       
Variable37	tBodyAccJerkMag-mean()   
Variable38	tBodyAccJerkMag-std()     
Variable39	tBodyGyroMag-mean()        
Variable40	tBodyGyroMag-std()     
Variable41	tBodyGyroJerkMag-mean()   
Variable42	tBodyGyroJerkMag-std()     
Variable43	fBodyAcc-mean()-X       
Variable44	fBodyAcc-mean()-Y        
Variable45	fBodyAcc-mean()-Z          
Variable46	fBodyAcc-std()-X       
Variable47	fBodyAcc-std()-Y      
Variable48	fBodyAcc-std()-Z           
Variable49	fBodyAccJerk-mean()-X  
Variable50	fBodyAccJerk-mean()-Y   
Variable51	fBodyAccJerk-mean()-Z      
Variable52	fBodyAccJerk-std()-X   
Variable53	fBodyAccJerk-std()-Y   
Variable54	fBodyAccJerk-std()-Z       
Variable55	fBodyGyro-mean()-X     
Variable56	fBodyGyro-mean()-Y    
Variable57	fBodyGyro-mean()-Z     
Variable58	fBodyGyro-std()-X       
Variable59	fBodyGyro-std()-Y       
Variable60	fBodyGyro-std()-Z        
Variable61	fBodyAccMag-mean()     
Variable62	fBodyAccMag-std()        
Variable63	fBodyBodyAccJerkMag-mean() 
Variable64	fBodyBodyAccJerkMag-std()   
Variable65	fBodyBodyGyroMag-mean()  
Variable66	fBodyBodyGyroMag-std()     
Variable67	fBodyBodyGyroJerkMag-mean() 
Variable68	fBodyBodyGyroJerkMag-std() 

Some information on the variable including:
 
 'data.frame':	180 obs. of  68 variables:
 * subject                    : num  1 1 1 1 1 1 2 2 2 2 ...
 * activity                   : atomic  1 2 3 4 5 6 1 2 3 4 ...
  ..- attr(*, "levels")= chr  "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" ...
 * tBodyAcc-mean()-X          : num  0.277 0.255 0.289 0.261 0.279 ...
 * tBodyAcc-mean()-Y          : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 * tBodyAcc-mean()-Z          : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 * tBodyAcc-std()-X           : num  -0.284 -0.355 0.03 -0.977 -0.996 ...
 * tBodyAcc-std()-Y           : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 * tBodyAcc-std()-Z           : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 * tGravityAcc-mean()-X       : num  0.935 0.893 0.932 0.832 0.943 ...
 * tGravityAcc-mean()-Y       : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
 * tGravityAcc-mean()-Z       : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 * tGravityAcc-std()-X        : num  -0.977 -0.956 -0.951 -0.968 -0.994 ...
 * tGravityAcc-std()-Y        : num  -0.971 -0.953 -0.937 -0.936 -0.981 ...
 * tGravityAcc-std()-Z        : num  -0.948 -0.912 -0.896 -0.949 -0.976 ...
 * tBodyAccJerk-mean()-X      : num  0.074 0.1014 0.0542 0.0775 0.0754 ...
 * tBodyAccJerk-mean()-Y      : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 * tBodyAccJerk-mean()-Z      : num  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
 * tBodyAccJerk-std()-X       : num  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
 * tBodyAccJerk-std()-Y       : num  0.067 -0.378 -0.102 -0.981 -0.986 ...
 * tBodyAccJerk-std()-Z       : num  -0.503 -0.707 -0.346 -0.988 -0.992 ...
 * tBodyGyro-mean()-X         : num  -0.0418 0.0505 -0.0351 -0.0454 -0.024 ...
 * tBodyGyro-mean()-Y         : num  -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ...
 * tBodyGyro-mean()-Z         : num  0.0849 0.0584 0.0901 0.0629 0.0748 ...
 * tBodyGyro-std()-X          : num  -0.474 -0.545 -0.458 -0.977 -0.987 ...
 * tBodyGyro-std()-Y          : num  -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ...
 * tBodyGyro-std()-Z          : num  -0.344 -0.507 -0.125 -0.941 -0.981 ...
 * tBodyGyroJerk-mean()-X     : num  -0.09 -0.1222 -0.074 -0.0937 -0.0996 ...
 * tBodyGyroJerk-mean()-Y     : num  -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ...
 * tBodyGyroJerk-mean()-Z     : num  -0.0461 -0.0407 -0.027 -0.0467 -0.049 ...
 * tBodyGyroJerk-std()-X      : num  -0.207 -0.615 -0.487 -0.992 -0.993 ...
 * tBodyGyroJerk-std()-Y      : num  -0.304 -0.602 -0.239 -0.99 -0.995 ...
 * tBodyGyroJerk-std()-Z      : num  -0.404 -0.606 -0.269 -0.988 -0.992 ...
 * tBodyAccMag-mean()         : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 * tBodyAccMag-std()          : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 * tGravityAccMag-mean()      : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 * tGravityAccMag-std()       : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 * tBodyAccJerkMag-mean()     : num  -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ...
 * tBodyAccJerkMag-std()      : num  -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ...
 * tBodyGyroMag-mean()        : num  -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ...
 * tBodyGyroMag-std()         : num  -0.187 -0.149 -0.226 -0.935 -0.979 ...
 * tBodyGyroJerkMag-mean()    : num  -0.299 -0.595 -0.295 -0.992 -0.995 ...
 * tBodyGyroJerkMag-std()     : num  -0.325 -0.649 -0.307 -0.988 -0.995 ...
 * fBodyAcc-mean()-X          : num  -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ...
 * fBodyAcc-mean()-Y          : num  0.08971 -0.19098 0.00155 -0.94408 -0.97707 ...
 * fBodyAcc-mean()-Z          : num  -0.332 -0.433 -0.226 -0.959 -0.985 ...
 * fBodyAcc-std()-X           : num  -0.3191 -0.3374 0.0243 -0.9764 -0.996 ...
 * fBodyAcc-std()-Y           : num  0.056 0.0218 -0.113 -0.9173 -0.9723 ...
 * fBodyAcc-std()-Z           : num  -0.28 0.086 -0.298 -0.934 -0.978 ...
 * fBodyAccJerk-mean()-X      : num  -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ...
 * fBodyAccJerk-mean()-Y      : num  -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ...
 * fBodyAccJerk-mean()-Z      : num  -0.469 -0.685 -0.288 -0.986 -0.991 ...
 * fBodyAccJerk-std()-X       : num  -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ...
 * fBodyAccJerk-std()-Y       : num  0.107 -0.382 -0.135 -0.983 -0.987 ...
 * fBodyAccJerk-std()-Z       : num  -0.535 -0.726 -0.402 -0.988 -0.992 ...
 * fBodyGyro-mean()-X         : num  -0.339 -0.493 -0.352 -0.976 -0.986 ...
 * fBodyGyro-mean()-Y         : num  -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ...
 * fBodyGyro-mean()-Z         : num  -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ...
 * fBodyGyro-std()-X          : num  -0.517 -0.566 -0.495 -0.978 -0.987 ...
 * fBodyGyro-std()-Y          : num  -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ...
 * fBodyGyro-std()-Z          : num  -0.437 -0.572 -0.238 -0.944 -0.982 ...
 * fBodyAccMag-mean()         : num  -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ...
 * fBodyAccMag-std()          : num  -0.398 -0.416 -0.187 -0.928 -0.982 ...
 * fBodyBodyAccJerkMag-mean() : num  -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ...
 * fBodyBodyAccJerkMag-std()  : num  -0.103 -0.533 -0.104 -0.982 -0.993 ...
 * fBodyBodyGyroMag-mean()    : num  -0.199 -0.326 -0.186 -0.958 -0.985 ...
 * fBodyBodyGyroMag-std()     : num  -0.321 -0.183 -0.398 -0.932 -0.978 ...
 * fBodyBodyGyroJerkMag-mean(): num  -0.319 -0.635 -0.282 -0.99 -0.995 ...
 * fBodyBodyGyroJerkMag-std() : num  -0.382 -0.694 -0.392 -0.987 -0.995 ...
 
 


##Sources
Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


