authentication
hashedCanonicalRequestFor: aRequest 
	

	^ (SHA256 hashMessage: (self canonicalStringFor: aRequest)) hex.