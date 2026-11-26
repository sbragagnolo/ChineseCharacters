showing
showKnowledgePage

	self knowledgeView ifNotNil: [ ^ self ].

	self knowledgeView refresh.

	self showInViewport: self knowledgeView