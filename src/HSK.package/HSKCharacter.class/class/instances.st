accessing
instances
	^ instances ifNil: [ instances := (STONReader on: self encodedInstances base64Decoded utf8Decoded readStream ) next ]