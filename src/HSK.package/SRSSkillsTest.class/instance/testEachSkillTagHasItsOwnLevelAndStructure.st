tests
testEachSkillTagHasItsOwnLevelAndStructure

	| content |

	content := self aLockedKnownContent.

	self assert: (content instVarNamed: #skills) isEmpty.

	content skill: #writing.

	content skill: #reading.

	self deny: (content skill: #writing) == (content skill: #reading).

	self assert: (content instVarNamed: #skills) size equals: 2