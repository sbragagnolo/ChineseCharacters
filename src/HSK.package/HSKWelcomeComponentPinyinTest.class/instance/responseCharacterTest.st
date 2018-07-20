running
responseCharacterTest
	^ self
		call:
			(HSKWelcomeComponentPinyinPrompter new
				character: character;
				yourself)