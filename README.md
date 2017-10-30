# pharo-aws


```smalltalk
aws := AWS new.
aws region: 'eu-west-1'.
aws authentication: (AWS4HMacSha256 
	accessID: '***'
	secretKey: '***').

	
sqs := aws simpleQueueService.

sqs listQueues.

sqs createQueue: 'test2'.
```
