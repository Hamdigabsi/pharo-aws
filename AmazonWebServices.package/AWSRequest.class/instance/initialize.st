initialization
initialize
	super initialize.
	timestamp := ZTimestamp now.
	headers := OrderedDictionary new.
	queryString := Dictionary new.