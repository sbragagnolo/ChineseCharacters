words
unlockWords
	| chars |
	chars := self unlockedCharacters collect: #knowledge.
	((words
		select: [ :t | t word allSatisfy: [ :h | chars includes: h ] ])
		collect: [ :w | session knowledgeFor: w word ])
		select: #isLocked
		thenDo: #unlock