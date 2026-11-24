tests
testTheShellShowsDomainNotificationsInTheStatus

	| entry |

	app newUser.

	shell := HSKDesktopShell on: app.

	self assert: shell statusText equals: ''.

	entry := app currentUser goal characters anyOne.

	entry submitReview: true on: #writing.

	self assert: shell statusText isNotEmpty.