tests
testTheSessionAnnouncerRelaysItsContentsReviews

	| session content relays |

	session := SRSUser new.

	content := session knowledgeFor: (HSKString fromString: '我爱').

	content unlock.

	relays := OrderedCollection new.

	session announcer when: SRSLevelDecreased do: [ :ann | relays add: ann ] for: relays.

	content submitReview: false on: #writing.

	self assert: relays size equals: 1