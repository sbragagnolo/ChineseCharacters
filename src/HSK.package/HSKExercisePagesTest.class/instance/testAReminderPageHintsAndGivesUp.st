tests
testAReminderPageHintsAndGivesUp

	| page subject |

	app newUser.

	page := HSKReminderPage on: app.

	subject := page currentSubject.

	self assert: page hintText notEmpty.

	page giveUp.

	self assert: subject overAllLevel level equals: 1.