actions
deleteQueue: queueUrl
	
	^ aws executeRequest: (AWSSQSDeleteQueue  new
		aws: aws;
		queueUrl: queueUrl;
		yourself).