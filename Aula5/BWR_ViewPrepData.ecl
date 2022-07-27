IMPORT $;
//Browse raw input data
OUTPUT($.File_Property.File,NAMED('Property'));
COUNT($.File_Property.File);

//Browse clean input data - notice the amount of data that had quality issues
// OUTPUT($.Prep01.myDataE,NAMED('CleanProperty'));
// OUTPUT($.Prep01_MI.myDataE,NAMED('CleanPropertyMI'));
// COUNT($.Prep01.myDataE);

//Browse clean train data and test data
// OUTPUT($.Prep01.myTrainData,NAMED('TrainData'));
// OUTPUT($.Prep01_MI.myTrainData,NAMED('TrainDataMI'));
// COUNT($.Prep01.myTrainData);
// OUTPUT($.Prep01.myTestData,NAMED('TestData'));
// COUNT($.Prep01.myTestData);

//Browse converted train and test data
// OUTPUT($.Convert02.myIndTrainDataNF,NAMED('IndTrain'));
// OUTPUT($.Convert02.myDepTrainDataNF,NAMED('DepTrain'));
// OUTPUT($.Convert02.myIndTestDataNF,NAMED('IndTest'));
// OUTPUT($.Convert02.myDepTestDataNF,NAMED('DepTest'));

// Teste da Função
// $.FN_GetPrice(95451,118720,2011,14774,1437,3,2,1,1968); //~130k
