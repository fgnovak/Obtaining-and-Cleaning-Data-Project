# Obtaining-and-Cleaning-Data-Project
# Introduction
The script “run_analysis.R” reads wearable computing data, assumed to be stored in the working directory, and manipulates it to make the data tidy.  The script was written as part of a project in a Coursera course, “Obtaining and Cleaning Data,” offered by the Johns Hopkins University Bloomberg School of Public Health.
The data was collected from the accelerometers from the Samsung Galaxy S smartphone.  The data was obtained from:
  https://d396gusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is the citation that acknowledges the authors of the data:

  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones   using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012).    Vitoria-Gasteiz, Spain. Dec 2012

This README file includes a code book that each variable and its values in the tidy data set, and a discussion of manipulations, an explicit and exact recipe used to obtain the tidy data from the raw data.
# Code Book
| Variable               | Description                                                                                  | Values                                                                          |
|------------------------|----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| Subject                | Identifier of subject who carried out the experiment.                                        | Integer in [1,30]                                                               |
| Activity               | Label to identify what was being performed when measurement was taken.                       | 1 WALKING 2 WALKING UPSTAIRS 3 WALKING DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING |
| 1 tBodyAcc-mean()-X    | Mean value of the time domain signal of the body  acceleration in the X direction.           | Numeric                                                                         |
| 2 tBodyAcc-mean()-Y    | Mean value of the time domain signal of the body acceleration in the Y direction.            | Numeric                                                                         |
| 3 tBodyAcc-mean()-Z    | Mean value of the time domain signal of the body acceleration in the Z direction.            | Numeric                                                                         |
| 4 tBodyAcc-std()-X     | Standard deviation of the time domain signal of the body acceleration in the X direction.    | Numeric                                                                         |
| 5 tBodyAcc-std()-Y     | Standard deviation of the time domain signal of the body acceleration in the Y direction.    | Numeric                                                                         |
| 6 tBodyAcc-std()-Z     | Standard deviation of the time domain signal of the body acceleration in the Z direction.    | Numeric                                                                         |
