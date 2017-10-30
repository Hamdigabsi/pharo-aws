authentication
authenticateRequest: anAWSGetRequest 
	
	| mutableRequest |
	mutableRequest := anAWSGetRequest copy.
	mutableRequest
		headerAt: 'x-amz-date' put: anAWSGetRequest amzdate;
		headerAt: 'Authorization' put: (self authorizationHeaderFor: anAWSGetRequest).
	^ mutableRequest