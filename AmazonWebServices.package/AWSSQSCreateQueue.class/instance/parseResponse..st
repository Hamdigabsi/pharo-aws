parsing
parseResponse: aZnResponse 
	
	| response urls |
	response := XMLDOMParser parse: aZnResponse contents.
	urls := (((response elementAt: 'CreateQueueResponse')
		elementAt: 'CreateQueueResult')
			elementsAt: 'QueueUrl') asOrderedCollection
				collect: [ :node | node nodes first asString ].
	^ urls first