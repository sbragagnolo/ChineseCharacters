refreshing
refreshKnowledge

	knowledgePane removeChildren.

	self overview entries

		do: [ :each | knowledgePane addChild: (self knowledgeTileFor: each) ]