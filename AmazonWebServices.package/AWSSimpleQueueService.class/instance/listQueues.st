actions
listQueues
	
	| response |
	response := aws get: (AWSGetRequest new
		action: 'ListQueues';
		service: 'sqs';
		aws: aws;
		yourself).
	response isSuccess ifFalse: [
		self error: response statusLine asString ].
	^ response