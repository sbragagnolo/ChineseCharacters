tests
testAReminderPageCountsItsProgress

	| page before |

	app newUser.

	page := HSKReminderPage on: app.

	before := page todoAmount.

	self assert: page doneAmount equals: 0.

	page next.

	self assert: page doneAmount equals: 1.

	self assert: page todoAmount equals: before - 1.