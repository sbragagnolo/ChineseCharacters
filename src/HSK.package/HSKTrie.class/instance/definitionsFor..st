as yet unclassified
definitionsFor: anHSKString
	^ self definitionsFor: anHSKString ifNone: [ self error: ('There is not entry for the word: {1}' format: {anHSKString}) ]