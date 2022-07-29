IMPORT $;
IMPORT ML_Core;
IMPORT LogisticRegression as LR;

// Função de calculo do score
EXPORT FN_GetScore(all_util, annual_inc, dti, fico_range_low, 
                  loan_amnt, mort_acc, tax_liens) := FUNCTION

		// Transformação dos parâmetros de entrada no formato de ML data frame				
		myInSet := [all_util, annual_inc, dti, fico_range_low, 
                  loan_amnt, mort_acc, tax_liens];
		myInDs := DATASET(myInSet, {REAL8 myInValue});
		ML_Core.Types.NumericField PrepData(RECORDOF(myInDS) Le, INTEGER C) := TRANSFORM
				SELF.wi 		:= 1,
				SELF.id		 	:= 1,
				SELF.number := C,
				SELF.value 	:= Le.myInValue;
		END;
		MyIndepData := PROJECT(myInDs, PrepData(LEFT,COUNTER));
		
		// Calculo do score 
		MyModel := DATASET('~mymodelLRXXX',ML_Core.Types.Layout_Model,FLAT,PRELOAD); //Substitua XXX pelas iniciais do seu nome completo
		MyBeta := LR.ExtractBeta(MyModel);
    MyScores := LR.LogitScore(MyBeta,myIndepData);
    
		RETURN OUTPUT(MyScores,{score:= 1000-ROUND(1000*raw)});
		
END;
