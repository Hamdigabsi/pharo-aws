authentication
stringToSignFor: aRequest
	
	^ '{algorithm}', String lf,
'{amzdate}', String lf,
'{credentialScope}', String lf,
'{hashedCanonicalRequest}' format: { 
		'algorithm' -> self algorithmName.
		'amzdate' -> aRequest amzdate.
		'credentialScope' -> (self credentialScopeFor: aRequest).
		'hashedCanonicalRequest' -> (self hashedCanonicalRequestFor: aRequest)
	 } asDictionary