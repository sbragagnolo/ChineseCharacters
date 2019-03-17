accessing
decodeHskCharacters
	^ (STONReader on: self encodedInstances base64Decoded utf8Decoded readStream) next