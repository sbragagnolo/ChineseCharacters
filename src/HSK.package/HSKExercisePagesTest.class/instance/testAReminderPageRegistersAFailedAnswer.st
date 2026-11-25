tests
testAReminderPageRegistersAFailedAnswer

	| page subject |

	app newUser.

	page := HSKReminderPage on: app.

	subject := page currentSubject.

	self deny: (page answer: 'zzzzz').

	self assert: subject overAllLevel level equals: 1.