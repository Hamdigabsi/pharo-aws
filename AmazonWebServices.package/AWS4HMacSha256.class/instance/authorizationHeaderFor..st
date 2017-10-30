authentication
authorizationHeaderFor: anAWSGetRequest 
	
	^ '{algorithm} Credential={accessID}/{credentialScope}, SignedHeaders={signedHeaders}, Signature={signature}' format: {
		'algorithm' -> self algorithmName.
		'accessID' -> accessID.
		'credentialScope' -> (self credentialScopeFor: anAWSGetRequest).
		'signedHeaders' -> (self signedHeadersFor: anAWSGetRequest).
		'signature' -> (self signatureFor: anAWSGetRequest)
	} asDictionary