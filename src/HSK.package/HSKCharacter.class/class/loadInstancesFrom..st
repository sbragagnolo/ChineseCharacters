accessing
loadInstancesFrom: aFileReference
	^ instances := (STONReader
		on: aFileReference readStream upToEnd base64Decoded utf8Decoded readStream)
		next