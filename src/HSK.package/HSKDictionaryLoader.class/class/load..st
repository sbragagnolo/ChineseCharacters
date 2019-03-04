creating
load: aFileReference
	^ singleton := (STONReader
		on:
			aFileReference readStream upToEnd base64Decoded utf8Decoded readStream)
		next