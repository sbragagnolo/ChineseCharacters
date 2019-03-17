as yet unclassified
definition
	| definitions  |
	definitions :=  (HSKDictionaryLoader default trie
		definitionsFor: self
		ifNone: [ {} ]) collect: [ :set | ', ' join: set ].
	self size = 1 ifTrue: [ 
		definitions := self first definition ,  definitions 
	 ].
	^ definitions 
	