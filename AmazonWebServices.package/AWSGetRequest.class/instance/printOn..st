printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPutAll: '(';
		nextPutAll: service;
		nextPutAll: ' -> ';
		nextPutAll: action;
		nextPutAll: ')'