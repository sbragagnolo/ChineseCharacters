rendering
componentPinyinTest: aCharacter
	^ self components
		at: aCharacter
		ifAbsentPut: [ HSKWelcomeComponentPinyinPrompter new
				character: aCharacter;
				yourself ]