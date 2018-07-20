initialization
knownCharacters: aUserID
	<get>
	| user |
	user := self service findUser: aUserID.
	^ self respond: user knownCharacters asArray