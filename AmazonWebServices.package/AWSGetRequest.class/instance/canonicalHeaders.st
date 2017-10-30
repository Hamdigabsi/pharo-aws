accessing
canonicalHeaders

	^ 'host:', self host, String lf, 'x-amz-date:', self amzdate, String lf.