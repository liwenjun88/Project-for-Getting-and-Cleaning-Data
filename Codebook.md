Variables and data:

V0  &nbsp;&nbsp;&nbsp;    Measurement<br>
   'WALKING'<br>
   'WALKING_UPSTAIRS'<br>
   'WALKING_DOWNSTAIRS'<br>
   'SITTING'<br>
   'STANDING'<br>
   ‘LAYING'<br>
   
VS   &nbsp;&nbsp;&nbsp;   Identifier of Subject<br>
   1<br>
   2<br>
   .<br>
   .<br>
   30<br>
   
value   &nbsp;&nbsp;&nbsp;   Test data record<br>
   Range from -1 to 1<br>
   
   
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
