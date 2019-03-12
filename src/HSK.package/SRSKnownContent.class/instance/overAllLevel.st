general level
overAllLevel
	^ skills
		ifEmpty: [ SRSKnowledgeLevel zero ]
		ifNotEmpty: [ skills values min ]