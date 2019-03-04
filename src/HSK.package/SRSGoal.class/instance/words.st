accessing
words
	^( (words
		asSortedCollection: [ :c1 :c2 | c1 word module < c2 word module ])
		collect: [ :c | session knowledgeFor: c ]) select: #isUnlocked