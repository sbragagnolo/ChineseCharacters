tests
testTheSameSkillTagReusesTheSameLevel

	| content |

	content := SRSKnownContent new.

	self assert: (content skill: #writing) == (content skill: #writing).

	self deny: (content skill: #writing) == (content skill: #reading)