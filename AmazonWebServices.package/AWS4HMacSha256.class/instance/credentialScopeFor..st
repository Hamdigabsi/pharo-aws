accessing
credentialScopeFor: anAWSGetRequest 
	
	^ '{dateStamp}/{region}/{service}/aws4_request' format: { 
		'dateStamp' -> self dateStamp.
		'region' -> anAWSGetRequest region.
		'service' -> anAWSGetRequest service.
	} asDictionary