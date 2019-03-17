accessing
lockedCharacters
	^ (characters collect: [ :c | session knowledgeFor: c ])
		select: #isLocked