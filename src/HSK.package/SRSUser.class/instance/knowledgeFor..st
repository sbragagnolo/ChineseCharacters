accessing
knowledgeFor: aContent
	^ knowledge
		at: aContent
		ifAbsentPut: [ SRSKnownContent new
				knowledge: aContent;
				session: self;
				yourself ]