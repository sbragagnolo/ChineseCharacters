rendering
character: aCharacter
	character := aCharacter.
	test := HSKPhoneticTest new
		subject: character;
		beFriendly;
		yourself