accessing
unlockedCharacters
	^ ((characters )
		collect: [ :c | session knowledgeFor: c ]) select: #isUnlocked