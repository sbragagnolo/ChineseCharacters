tests
testTheSameSkillTagReusesTheSameLevel

	| content |

	content := self aLockedKnownContent.

	self assert: (content skill: #writing) == (content skill: #writing)