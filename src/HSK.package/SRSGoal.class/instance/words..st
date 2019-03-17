accessing
words: aCollectionOfWords
	words := self
		orderByRepetitionAndAparition: (aCollectionOfWords reject: [ :t | t isUnknown ]).
	characters := self
		orderByRepetitionAndAparition: (words flatCollect: [ :w | w word ])