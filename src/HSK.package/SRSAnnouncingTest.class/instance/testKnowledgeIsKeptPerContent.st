tests
testKnowledgeIsKeptPerContent

	| session first second |

	session := SRSUser new.

	first := session knowledgeFor: (HSKString fromString: '我爱').

	second := session knowledgeFor: (HSKString fromString: '我爱').

	self assert: first == second.

	self assert: first isLocked.

	self deny: second isUnlocked