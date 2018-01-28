# Code Book

## Identifiers

**subject** The ID of the test subject. 30 volunteers within an age bracket of 19-48 years. Numeric.

**activity** The type of activiy performed when the corresponding measurement were taken. Six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the volunteers wearing a smartphone (Samsung Galaxy S II) on the waist. Character.

## List of Measurements Features in the tidy data set *data* and mean summurized in *average* data set. 

- *Features are normalized and bounded within [-1,1]*
- *Feature prefix: t - time domain signals; f - frequency domain signals*

1. **tBodyAcc-mean()-X** - Mean value of body acceleration signal – X direction. 
2. **tBodyAcc-mean()-Y** - Mean value of body acceleration signal – Y direction. 
3. **tBodyAcc-mean()-Z** - Mean value of body acceleration signal – Z direction. 
4. **BodyAcc-std()-X** - Standard deviation value of body acceleration signal – X direction. 
5. **tBodyAcc-std()-Y** - Standard deviation value of body acceleration signal – Y direction. 
6. **tBodyAcc-std()-Z** - Standard deviation value of body acceleration signal – Z direction. 
7. **tGravityAcc-mean()-X** - mean value of gravity acceleration signal – X direction. 
8. **tGravityAcc-mean()-Y** - mean value of gravity acceleration signal – Y direction. 
9. **tGravityAcc-mean()-Z** - mean value of gravity acceleration signal – Z direction. 
10. **tGravityAcc-std()-X** - standard deviation value of gravity acceleration signal – X direction. 
11. **tGravityAcc-std()-Y** - standard deviation value of gravity acceleration signal – Y direction. 
12. **tGravityAcc-std()-Z** - standard deviation value of gravity acceleration signal – Z direction. 
13. **tBodyAccJerk-mean()-X** - mean value of body acceleration Jerk signal – X direction. 
14. **tBodyAccJerk-mean()-Y** - mean value of body acceleration Jerk signal – Y direction.
15. **tBodyAccJerk-mean()-Z** - mean value of body acceleration Jerk signal – Z direction.
16. **tBodyAccJerk-std()-X** - standard deviation value of body acceleration Jerk signal – X direction.
17. **tBodyAccJerk-std()-Y** - standard deviation value of body acceleration Jerk signal – Y direction.
18. **tBodyAccJerk-std()-Z** - standard deviation value of body acceleration Jerk signal – Z direction.
19. **tBodyGyro-mean()-X** - Mean value of body gyroscpe signal – X direction.
20. **tBodyGyro-mean()-Y** - Mean value of body gyroscpe signal – Y direction.
21. **tBodyGyro-mean()-Z** - Mean value of body gyroscpe signal – Z direction.
22. **tBodyGyro-std()-X** - Standard deviation value of body gyroscope signal – X direction.
23. **tBodyGyro-std()-Y** - Standard deviation value of body gyroscope signal – Y direction.
24. **tBodyGyro-std()-Z** - Standard deviation value of body gyroscope signal – Z direction.
25. **tBodyGyroJerk-mean()-X** - Mean value of body gyroscope Jerk signal – X direction.
26. **tBodyGyroJerk-mean()-Y** - Mean value of body gyroscope Jerk signal – Y direction.
27. **tBodyGyroJerk-mean()-Z** - Mean value of body gyroscope Jerk signal – Z direction.
28. **tBodyGyroJerk-std()-X** - Standard deviation value of body gyroscope Jerk signal – X direction.
29. **tBodyGyroJerk-std()-Y** - Standard deviation value of body gyroscope Jerk signal – Y direction.
30. **tBodyGyroJerk-std()-Z** - Standard deviation value of body gyroscope Jerk signal – Z direction.
31. **tBodyAccMag-mean()** - Mean value of body accelaration signal using Euclidean norm.
32. **tBodyAccMag-std()** - Standard deviation value of body accelaration signal using Euclidean norm.
33. **tGravityAccMag-mean()** - Mean value of gravity accelaration signal using Euclidean norm.
34. **tGravityAccMag-std()** - Standard deviation value of gravity accelaration signal using Euclidean norm.
35. **tBodyAccJerkMag-mean()** - Mean value of body accelaration Jerk signal using Euclidean norm.
36. **tBodyAccJerkMag-std()** - Standard deviation value of body accelaration Jerk signal using Euclidean norm.
37. **tBodyGyroMag-mean()** - Mean value of body gyroscope signal using Euclidean norm.
38. **tBodyGyroMag-std()** - Standard value of body gyroscope signal using Euclidean norm
39. **tBodyGyroJerkMag-mean()** - Mean value of body gyroscope Jerk signal using Euclidean norm.
40. **tBodyGyroJerkMag-std()** - Standard deviation value of body gyroscope Jerk signal using Euclidean norm.
41. **fBodyAcc-mean()-X** - Mean value of body acceleration signal – X direction. 
42. **fBodyAcc-mean()-Y** - Mean value of body acceleration signal – Y direction. 
43. **fBodyAcc-mean()-Z** - Mean value of body acceleration signal – Z direction. 
44. **fBodyAcc-std()-X** - Standard deviation value of body acceleration signal – X direction.
45. **fBodyAcc-std()-Y** - Standard deviation value of body acceleration signal – Y direction.
46. **fBodyAcc-std()-Z** - Standard deviation value of body acceleration signal – Z direction.
47. **fBodyAcc-meanFreq()-X** - Mean frequency value of body acceleration signal – X direction. 
48. **fBodyAcc-meanFreq()-Y** - Mean frequency value of body acceleration signal – Y direction.
49. **fBodyAcc-meanFreq()-Z** - Mean frequency value of body acceleration signal – Z direction.
50. **fBodyAccJerk-mean()-X** - Mean value of body acceleration Jerk signal – X direction.
51. **fBodyAccJerk-mean()-Y** - Mean value of body acceleration Jerk signal – Y direction.
52. **fBodyAccJerk-mean()-Z** - Mean value of body acceleration Jerk signal – Z direction.
53. **fBodyAccJerk-std()-X** - Standard deviation value of body acceleration Jerk signal – X direction.
54. **fBodyAccJerk-std()-Y** - Standard deviation value of body acceleration Jerk signal – Y direction.
55. **fBodyAccJerk-std()-Z** - Standard deviation value of body acceleration Jerk signal – Z direction.
56. **fBodyAccJerk-meanFreq()-X** - Mean frequency value of body acceleration Jerk signal – X direction. 
57. **fBodyAccJerk-meanFreq()-Y** - Mean frequency value of body acceleration Jerk signal – Y direction. 
58. **fBodyAccJerk-meanFreq()-Z** - Mean frequency value of body acceleration Jerk signal – Z direction. 
59. **fBodyGyro-mean()-X** - Mean value of body Gyroscope signal – X direction.
60. **fBodyGyro-mean()-Y** - Mean value of body Gyroscope signal – Y direction.
61. **fBodyGyro-mean()-Z** - Mean value of body Gyroscope signal – Z direction.
62. **fBodyGyro-std()-X** - Standard deviation value of body Gyroscope signal – X direction.
63. **fBodyGyro-std()-Y** - Standard deviation value of body Gyroscope signal – Y direction.
64. **fBodyGyro-std()-Z** - Standard deviation value of body Gyroscope signal – Z direction.
65. **fBodyGyro-meanFreq()-X** - Mean frequency value of body Gyroscope signal – X direction.
66. **fBodyGyro-meanFreq()-Y** - Mean frequency value of body Gyroscope signal – Y direction.
67. **fBodyGyro-meanFreq()-Z** - Mean frequency value of body Gyroscope signal – Z direction.
68. **fBodyAccMag-mean()** - Mean value of body accelaration signal using Euclidean norm.
69. **fBodyAccMag-std()** - Standard deviation value of body accelaration signal using Euclidean norm.
70. **fBodyAccMag-meanFreq()** - Mean frequency value of body accelaration signal using Euclidean norm.
71. **fBodyAccJerkMag-mean()** - Mean value of body accelaration Jerk signal using Euclidean norm.
72. **fBodyAccJerkMag-std()** - Standard deviation value of body accelaration Jerk signal using Euclidean norm.
73. **fBodyAccJerkMag-meanFreq()** - Mean frequency value of body accelaration Jerk signal using Euclidean norm.
74. **fBodyGyroMag-mean()** - Mean value of body Gyroscope signal using Euclidean norm.
75. **fBodyGyroMag-std()** - Standard deviation value of body Gyroscope signal using Euclidean norm.
76. **fBodyGyroMag-meanFreq()** - Mean frequency value of body Gyroscope signal using Euclidean norm.
77. **fBodyGyroJerkMag-mean()** - Mean value of body Gyroscope Jerk signal using Euclidean norm.
78. **fBodyGyroJerkMag-std()** - Standard deviation value of body Gyroscope Jerk signal using Euclidean norm.
79. **fBodyGyroJerkMag-meanFreq()** - Mean frequency value of body Gyroscope Jerk signal using Euclidean norm.



