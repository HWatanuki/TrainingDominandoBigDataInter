EXPORT File_Lendings := MODULE
  
	EXPORT Layout_Lendings := RECORD
    UNSIGNED2 all_util;  			//razão entre saldo e limite de crédito
		REAL8 annual_inc;    			//renda anual
		REAL4 dti;           			//razão entre pagamento mensal de dividas e renda mensal
		UNSIGNED2 fico_range_low; // Score de credito do individuo
		UNSIGNED3 loan_amnt;      // valor do emprestimo
		UNSIGNED1 mort_acc;       // numero de hipotecas
		UNSIGNED1 tax_liens;      // numero de propriedades penhoradas para pagamento de impostos
		UNSIGNED1 loan_status;
  END;
	
	EXPORT Dataset_Lendings := PROJECT($.File_Binomial.Dataset_Binomial,Layout_Lendings);

END;