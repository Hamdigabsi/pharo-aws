printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPutAll: '(';
		nextPutAll: domain;
		nextPutAll: ' -> ';
		nextPutAll: action;
		nextPutAll: ')'