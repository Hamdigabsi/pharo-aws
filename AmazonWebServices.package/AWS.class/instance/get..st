requests
get: aRequest
	
	| client authenticatedRequest |
	client := ZnClient new.
	authenticatedRequest := authenticationMethod authenticateRequest: aRequest.
	self halt.
	authenticatedRequest executeOn: client.
	^ client response