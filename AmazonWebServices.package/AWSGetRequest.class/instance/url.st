accessing
url
	
	| url |
	url := ZnUrl fromString: self host defaultScheme: 'https'.
	^ url asString, '?', self canonicalQuerystring