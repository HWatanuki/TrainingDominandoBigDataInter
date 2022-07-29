IMPORT $, DataPatterns;

//Dataset bruto
FileRaw := $.File_raw.Dataset_raw;
// OUTPUT(FileRaw);
// COUNT(FileRaw);

//Perfilamento dos dados
// DataPatterns.Profile(FileRaw);
// DataPatterns.BestRecordStructure(FileRaw,,,TRUE);
// DataPatterns.Profile($.File_Optimized.Dataset_Optimized);

//Dataset filtrado com loan_status (0/1)
// OUTPUT($.File_Binomial.Dataset_binomial);
// OUTPUT(DataPatterns.Profile($.File_Binomial.Dataset_binomial),ALL);

//Dataset filtrado com campos de interesse
// $.File_Lendings.Dataset_Lendings;

//Dataset limpo e com campo aleatório
// OUTPUT($.Prep01.myDataE,NAMED('CleanLendings'));
// COUNT($.Prep01.myDataE);

//Amostras de treinamento e teste
// OUTPUT($.Prep01.myTrainData,NAMED('TrainData'));
// COUNT($.Prep01.myTrainData);
// OUTPUT($.Prep01.myTestData,NAMED('TestData'));
// COUNT($.Prep01.myTestData);

//Variáveis dependentes e independentes para treinamento e teste em formato data frame
// OUTPUT($.Convert02.myIndTrainDataNF,NAMED('IndTrain'));
// OUTPUT($.Convert02.myDepTrainDataNF,NAMED('DepTrain'));
// OUTPUT($.Convert02.myIndTestDataNF,NAMED('IndTest'));
// OUTPUT($.Convert02.myDepTestDataNF,NAMED('DepTest'));

// Teste da Função
$.FN_GetScore(51,130000,23,755,28000,5,0); //961
$.FN_GetScore(42,40000,23,680,4000,0,0); //862