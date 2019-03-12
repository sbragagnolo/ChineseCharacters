accessing
printOn: aStream
	aStream nextPutAll: 'Content - '.
	knowledge printOn: aStream.
	aStream nextPutAll: ' - '.
	self isLocked
		ifFalse: [ aStream nextPutAll: ' NextDate: '.
			aStream nextPutAll: self nextReviewDate asString ]