accessing
newUser

	| user |

	HSKDictionaryLoader default trie depth = 1

		ifTrue: [ HSKDictionaryLoader default registerCorpusCharacters ].

	user := SRSUser new.

	user xiaoWangZi.

	users add: user.

	self announcer announce: HSKUserAdded new.

	self currentUser: user.

	^ user