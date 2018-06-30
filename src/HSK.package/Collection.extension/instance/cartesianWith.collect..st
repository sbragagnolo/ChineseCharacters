*HSK
cartesianWith: anOtherCollection collect: aBlock
	^( self collect: [ :i | ((anOtherCollection collect: [ :j | aBlock value: i value: j ]) )asOrderedCollection  ] )asOrderedCollection 