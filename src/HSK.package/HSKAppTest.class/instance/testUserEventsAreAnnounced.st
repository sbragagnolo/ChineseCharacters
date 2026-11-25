tests
testUserEventsAreAnnounced

	| added selected |

	added := OrderedCollection new.

	selected := OrderedCollection new.

	app announcer when: HSKUserAdded do: [ :ann | added add: ann ] for: added.

	app announcer when: HSKUserSelected do: [ :ann | selected add: ann ] for: selected.

	app newUser.

	app newUser.

	self assert: added size equals: 2.

	self assert: selected size equals: 2.

	app currentUser: app users first.

	self assert: selected size equals: 3.