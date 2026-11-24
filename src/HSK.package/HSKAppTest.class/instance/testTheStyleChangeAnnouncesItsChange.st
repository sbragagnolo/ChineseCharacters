tests
testTheStyleChangeAnnouncesItsChange

	| announced |

	announced := OrderedCollection new.

	app announcer when: HSKStyleChanged do: [ :ann | announced add: ann ] for: announced.

	app style: #traditional.

	self assert: app isTraditional.

	self deny: app isSimplified.

	self assert: announced size equals: 1.