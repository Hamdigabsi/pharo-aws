accessing
canonicalQueryString
	
	^ String streamContents: [ :stream | | first |
		first := true.
		queryString keys sorted do: [ :k |
			first
				ifTrue: [ first := false ]
				ifFalse: [ stream nextPutAll: '&' ].
			stream
				nextPutAll: k;
				nextPutAll: '=';
				nextPutAll: (queryString at: k).
			 ] ]