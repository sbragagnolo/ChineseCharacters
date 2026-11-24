tests
testIncreasingBeyondTheMaximalLevelIsCapped

	| content |

	content := self aKnownContentWithSuccesses: 13.

	self assert: content overAllLevel level equals: SRSKnowledgeLevel rateTable size.

	self assert: content overAllLevel isMaximal