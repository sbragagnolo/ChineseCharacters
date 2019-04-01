accessing
todoItems
	^ todoItems
		ifNil: [ todoItems := exercise todo reverse
				collect: [ :c | 
					(self instantiate: HSKCharacterProfile)
						model: c;
						yourself ] ]