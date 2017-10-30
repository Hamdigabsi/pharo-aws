actions
createQueue: queueName
	
	^ aws executeRequest: (AWSSQSCreateQueue new
		aws: aws;
		queueName: queueName;
		yourself).
