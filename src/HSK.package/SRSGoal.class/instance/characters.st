accessing
characters
	^ (characters asSortedCollection: [ :c1 :c2 | c1 module < c2 module ])
		collect: [ :c | session knowledgeFor: c ]