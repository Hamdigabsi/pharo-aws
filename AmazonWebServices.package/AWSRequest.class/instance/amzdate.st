accessing
amzdate
	"Amazon expects a timestamp in format ISO 8601. For example:
	https://en.wikipedia.org/wiki/ISO_8601
	
	20171030T131451Z
	"
	
	^ String streamContents: [ :str |
			timestamp printOn: str format: #(nil $T nil $Z) ].