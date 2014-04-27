Variables and data:

V0    Measurement
   'WALKING'
   'WALKING_UPSTAIRS'
   'WALKING_DOWNSTAIRS'
   'SITTING'
   'STANDING'
   ‘LAYING'
   
VS    Identifier of Subject
   1
   2
   .
   .
   30
   
value    Test data record
   Range from -1 to 1
   
   
Transformations:

1. X_test and y_test (append to) -> test. X_train and y_train (append to)-> train. 
2. test and train (merge) -> Alldata
3. Alldata (reshape) -> mAlldata
4. mAlldata (order) ->finalAlldata
5. finalAlldata (tapply) -> Mean and Sd
6. X_test, y_test and subject_test (append to) -> test_s. X_train, y_train and subject_train (append to)-> train_s.
7. test_s and train_s (merge) -> Alldata_s
8. Alldata_s (reshape) -> mAlldata_s
9. mAlldata_s (order) ->finalAlldata_s
10. finalAlldata_s (tapply) -> Mean for each subject and each measurement
