initialization
testUsersLevelupWhenAllLevelZeroKnowledgeGoesUp
	| user |
	user := service createUser: #test.
	self assert: user level equals: 0.
	user knownKnowledgeLevelOne do: #levelUp.
	self assert: user level equals: 1