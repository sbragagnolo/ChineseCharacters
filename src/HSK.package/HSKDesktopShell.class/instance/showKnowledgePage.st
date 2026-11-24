showing
showKnowledgePage

	self knowledgeView isNil

		ifTrue: [ ^ self ].

	self knowledgeView refresh.

	self showInViewport: self knowledgeView.