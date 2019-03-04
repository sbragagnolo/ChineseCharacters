accessing
xiaoWangZi: aSession
	^ self new
		words:
			(HSKDictionaryLoader default
				streamDefinitions: (HSKString fromString: HSKDictionaryLoader xiaoWangZi) readStream)
				upToEnd;
		session: aSession yourself