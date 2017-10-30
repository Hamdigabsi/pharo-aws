authentication
signatureFor: anAWSGetRequest 
	| hmac signedDate signedRegion signedService signingKey |
	hmac := SHA256 new hmac.
	hmac key: ('AWS4', secretKey) utf8Encoded.
	signedDate := hmac digestMessage: self dateStamp.

	hmac key: signedDate.
	signedRegion := hmac digestMessage: anAWSGetRequest region.

	hmac key: signedRegion.
	signedService := hmac digestMessage: anAWSGetRequest service.

	hmac key: signedService.
	signingKey := hmac digestMessage: 'aws4_request'.

	hmac key: signingKey.
	^ (hmac digestMessage: (self stringToSignFor: anAWSGetRequest) utf8Encoded) hex.