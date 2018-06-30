loading related
loadSeeAlso: aReadStream frequency: anInteger
	| return |
	loadingRelated
		ifTrue: [ "Warning signal: 'Already loading'.
			
	^ 		self load: '%E5%AF%AB' urlDecoded first  frequency: anInteger." ^ nil ].
	loadingRelated := true.
	[ ^ self loadAnyOfSeeAlso: aReadStream frequency: anInteger ]
		ensure: [ loadingRelated := false ]