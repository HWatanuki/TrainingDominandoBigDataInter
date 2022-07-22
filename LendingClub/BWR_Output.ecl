IMPORT $, DataPatterns;

//Dataset bruto
// FileRaw := $.File_raw.Dataset_raw;
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

