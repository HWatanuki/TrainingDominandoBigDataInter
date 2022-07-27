IMPORT $;
IMPORT ML_Core;
myTrainData := $.Prep01.myTrainData;
myTestData  := $.Prep01.myTestData;
//Add a sequential ID - CRITICAL to this bundle
ML_Core.AppendSeqId(myTrainData,id,myTrainIDData);
ML_Core.AppendSeqId(myTestData,id,myTestIDData);
 // OUTPUT(myTrainIDData, NAMED('TrainDataID'));  //Uncomment to spot the Numeric Field Matrix conversion
 // OUTPUT(myTestIDData, NAMED('TestDataID'));  //Uncomment to spot the Numeric Field Matrix conversion
//Numeric Field Matrix conversion
ML_Core.ToField(myTrainIDData, myTrainDataNF);
ML_Core.ToField(myTestIDData, myTestDataNF);
// OUTPUT(myTrainDataNF, NAMED('TrainDataNF'));  //Uncomment to spot the Numeric Field Matrix conversion
// OUTPUT(myTestDataNF, NAMED('TestDataNF'));  //Uncomment to spot the Numeric Field Matrix conversion
//* <-- Delete the first forward slash (/) just before the asterisk (*) to comment out the entire MODULE
EXPORT Convert02 := MODULE
   //We have 4 independent fields and the last field (5) is the dependent
   EXPORT myIndTrainDataNF := myTrainDataNF(number < 8); // Number is the field number
   EXPORT myDepTrainDataNF := PROJECT(myTrainDataNF(number = 8), 
                                      TRANSFORM(ML_Core.Types.DiscreteField, 
                                                SELF.number := 1,
                                                SELF := LEFT));
   EXPORT myIndTestDataNF := myTestDataNF(number < 8); // Number is the field number
   EXPORT myDepTestDataNF := PROJECT(myTestDataNF(number = 8), 
                                     TRANSFORM(ML_Core.Types.DiscreteField, 
                                               SELF.number := 1,
                                               SELF := LEFT));
   																									
END;
// */