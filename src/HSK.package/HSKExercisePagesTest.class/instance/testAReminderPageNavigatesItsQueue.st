tests
testAReminderPageNavigatesItsQueue

	| page before |

	app newUser.

	page := HSKReminderPage on: app.

	before := page currentSubject.

	self assert: page hasNext.

	page next.

	self assert: page currentSubject ~~ before.