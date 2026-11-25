tests
testTheViewportShowsEmptyKnowledgeWithoutAUser

	shell := HSKDesktopShell on: app.

	self assert: ((shell childWithId: #viewport) children anySatisfy: [ :each | each isKindOf: HSKKnowledgeView ]).

	self assert: (shell childWithId: #tiles) childrenCount equals: 0.