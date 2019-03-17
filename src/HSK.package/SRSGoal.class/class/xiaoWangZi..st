accessing
xiaoWangZi: aSession
	^ self new
		words:
			(HSKDictionaryLoader default
				streamDefinitions: HSKDictionaryLoader xiaoWangZi readStream)
				upToEnd;
		session: aSession yourself