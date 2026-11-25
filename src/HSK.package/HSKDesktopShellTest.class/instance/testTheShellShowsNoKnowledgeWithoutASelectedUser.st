tests
testTheShellShowsNoKnowledgeWithoutASelectedUser

	shell := HSKDesktopShell on: app.

	self assert: (shell childWithId: #knowledge) childrenCount equals: 0.