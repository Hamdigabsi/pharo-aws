# pharo-aws


```smalltalk
aws := AWS new.
aws region: 'eu-west-1'.
aws authentication: (AWS4HMacSha256 
	accessID: 'AKIAJZKCISSTFPVLT7QQ'
	secretKey: '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').

	
sqs := aws simpleQueueService.

sqs listQueues.

sqs createQueue: 'test2'.
```
