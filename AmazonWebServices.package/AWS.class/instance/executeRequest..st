requests
executeRequest: aRequest
	
	| client authenticatedRequest response |
	client := ZnClient new.
	
	authenticatedRequest := authenticationMethod authenticateRequest: aRequest.
	
	authenticatedRequest executeOn: client.
	response := client response.
	response isSuccess ifFalse: [
		self error: response statusLine asString ].
	
	^ aRequest parseResponse: response