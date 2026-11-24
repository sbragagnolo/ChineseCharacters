tests
testDomainNotificationsComeFromTheUserAnnouncer

	| levelups content |

	levelups := OrderedCollection new.

	app newUser.

	app currentUser announcer when: SRSLevelUp do: [ :ann | levelups add: ann ] for: levelups.

	content := app currentUser goal characters anyOne.

	content submitReview: true on: #writing.

	self assert: levelups size >= 1.