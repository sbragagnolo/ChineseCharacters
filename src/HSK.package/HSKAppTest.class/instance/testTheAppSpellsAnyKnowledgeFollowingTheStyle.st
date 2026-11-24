tests
testTheAppSpellsAnyKnowledgeFollowingTheStyle

	| love |

	app newUser.

	love := HSKCharacterProvider default detect: [ :c | c traditional = $愛 ].

	self assert: (app spellingOf: love) equals: '爱'.

	app style: #traditional.

	self assert: (app spellingOf: love) equals: '愛'.