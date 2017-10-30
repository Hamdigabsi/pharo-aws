actions
listQueues
	
	^ aws executeRequest: (AWSSQSListQueues new
		aws: aws;
		yourself).
