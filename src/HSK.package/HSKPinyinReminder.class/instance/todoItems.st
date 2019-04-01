accessing
todoItems
	^ todoItems
		ifNil: [ todoItems := exercise todo 
				collect: [ :c | 
					(self instantiate: HSKCharacterProfile)
						model: c;
						yourself ] ]