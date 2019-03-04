as yet unclassified
definition
	^ HSKDictionaryLoader default
		definitionsFor: self
		ifNone: [ 'unknown' ]