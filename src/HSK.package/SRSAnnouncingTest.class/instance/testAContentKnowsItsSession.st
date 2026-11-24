tests
testAContentKnowsItsSession

	| session mine yours |

	session := SRSUser new.

	mine := session knowledgeFor: (HSKString fromString: '我爱').

	yours := session knowledgeFor: (HSKString fromString: '蛋糕').

	self deny: mine == yours.

	self assert: session announcer notNil