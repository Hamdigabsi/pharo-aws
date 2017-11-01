actions
pergeQueue: queueUrl
	
	^ aws executeRequest: (AWSSQSPurgeQueue   new aws: aws; queueUrl: queueUrl; yourself).