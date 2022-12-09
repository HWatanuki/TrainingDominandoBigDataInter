IMPORT $, DataPatterns;
// Browse raw input data
// OUTPUT($.File_Loan_Status.File,NAMED('Property'));
// COUNT($.File_Loan_Status.File);
// Profiling the raw data
// OUTPUT(DataPatterns.Profile($.File_Property.File,,,,,10));
// OUTPUT(DataPatterns.Benford($.File_Property.File,'assessed_value, total_value'));
// Browse clean input data
// OUTPUT($.Prep01.myDataE,NAMED('CleanProperty'));
// COUNT($.Prep01.myDataE);
// Browse clean train data and test data
//  OUTPUT($.Prep01.myTrainData,NAMED('TrainData'));
// COUNT($.Prep01.myTrainData);
//  OUTPUT($.Prep01.myTestData,NAMED('TestData'));
// OUTPUT($.File_Optimized.Dataset_optimized, NAMED('File_Optimized'));
// OUTPUT($.File_Binomial.Dataset_binomial, NAMED('File_Binomial'));
OUTPUT($.File_Lendings.Dataset_Lendings, NAMED('File_Lendings'));
// COUNT($.File_Lendings.Dataset_Lendings);
// Browse clean input data
OUTPUT($.Prep02.myDataE,NAMED('CleanLendings'));
// COUNT($.Prep02.myDataE);
// Browse clean train data and test data
 OUTPUT($.Prep02.myTrainData,NAMED('TrainData'));
// COUNT($.Prep02.myTrainData);
 OUTPUT($.Prep02.myTestData,NAMED('TestData'));
// COUNT($.Prep02.myTestData);
// Browse converted train and test data
OUTPUT($.Convert02.myIndTrainDataNF,NAMED('IndTrain'));
OUTPUT($.Convert02.myDepTrainDataNF,NAMED('DepTrain'));
OUTPUT($.Convert02.myIndTestDataNF,NAMED('IndTest'));
OUTPUT($.Convert02.myDepTestDataNF,NAMED('DepTest'));
