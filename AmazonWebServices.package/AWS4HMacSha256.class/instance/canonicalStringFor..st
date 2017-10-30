authentication
canonicalStringFor: aRequest 
	
	^ aRequest method, String lf,
		aRequest canonicalUri, String lf,
		aRequest canonicalQuerystring, String lf,
		aRequest canonicalHeaders, String lf,
		(self signedHeadersFor: aRequest), String lf,
		(self payloadHashFor: aRequest).