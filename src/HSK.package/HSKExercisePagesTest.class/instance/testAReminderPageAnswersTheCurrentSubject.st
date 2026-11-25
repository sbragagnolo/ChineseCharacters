tests
testAReminderPageAnswersTheCurrentSubject

	| page correct |

	app newUser.

	page := HSKReminderPage on: app.

	correct := page currentSubject knowledge asHSKString pinyin asArray first.

	self assert: (page answer: correct).