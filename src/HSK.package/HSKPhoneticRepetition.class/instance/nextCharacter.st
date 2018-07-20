rendering
nextCharacter
	(self componentPinyinTest: self currentCharacter) isResolved
		ifTrue: [ position := position + 1 ].
	^ characters at: position