relation client-facture:
	un client peut avoir plusieurs factures, mais une facture appartient a un seul client.


relation facture-marchandise:
	une facture peut contenir plusieurs marchandises et une marchandise peut apparaitre dans plusieurs factures.

	cette relation est realisee grace a la table contient