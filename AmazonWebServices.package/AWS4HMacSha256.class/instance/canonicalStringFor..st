authentication
canonicalStringFor: aRequest 
	
	^ aRequest method, String lf,
		aRequest canonicalUri, String lf,
		aRequest canonicalQueryString, String lf,
		aRequest canonicalHeaders, String lf,
		(self signedHeadersFor: aRequest), String lf,
		(self payloadHashFor: aRequest).