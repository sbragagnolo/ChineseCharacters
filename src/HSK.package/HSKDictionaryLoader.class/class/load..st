creating
load: aFileReference
	^ (STONReader
		on: aFileReference readStream upToEnd base64Decoded utf8Decoded readStream)
		next