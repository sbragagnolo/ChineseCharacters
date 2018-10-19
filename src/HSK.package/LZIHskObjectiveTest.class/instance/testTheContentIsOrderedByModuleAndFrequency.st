initialization
testTheContentIsOrderedByModuleAndFrequency
	objective contents
		pairsCollect: [ :c :c2 | 
			self
				assert: c module <= c2 module  ]