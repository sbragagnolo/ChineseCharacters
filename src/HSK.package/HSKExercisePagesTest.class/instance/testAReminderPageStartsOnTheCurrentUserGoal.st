tests
testAReminderPageStartsOnTheCurrentUserGoal

	| page |

	app newUser.

	page := HSKReminderPage on: app.

	self assert: (page exercise isKindOf: SRSPhoneticExercise).

	self assert: (page current isKindOf: HSKPhoneticTest).

	self assert: page currentSubject notNil.