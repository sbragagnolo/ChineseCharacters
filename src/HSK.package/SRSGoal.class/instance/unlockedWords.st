accessing
unlockedWords
	^ ((words )
		collect: [ :c | session knowledgeFor: c word ]) select: #isUnlocked