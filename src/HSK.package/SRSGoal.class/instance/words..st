accessing
words: aCollectionOfWords
	words := aCollectionOfWords asSet.
	words := words
		reject: [ :t | t word isNil or: [ t word allSatisfy: [ :a | a isHolder ] ] ].
	characters := (words flatCollect: [ :w | w word ]) asSet