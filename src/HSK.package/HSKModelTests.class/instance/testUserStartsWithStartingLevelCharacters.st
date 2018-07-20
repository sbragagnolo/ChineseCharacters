initialization
testUserStartsWithStartingLevelCharacters
	self assert: ((service createUser: #test) knownCharacters collect: #knowledge) equals: service initialCharactersSet