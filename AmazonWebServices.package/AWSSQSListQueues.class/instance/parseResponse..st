parsing
parseResponse: aZnResponse 
	
	| listQueueResponse urls |
	listQueueResponse := XMLDOMParser parseDocumentFrom: aZnResponse contents.
	urls := (((listQueueResponse elementAt: 'ListQueuesResponse')
		elementAt: 'ListQueuesResult')
			elementsAt: 'QueueUrl') asOrderedCollection
				collect: [ :node | node nodes first asString ].
	^ urls