execution
executeOn: aZnClient 
	
	headers keysAndValuesDo: [ :key :value |
		aZnClient headerAt: key put: value ].
	
	^ aZnClient
		url: self url;
		get