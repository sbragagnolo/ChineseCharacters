accessing
doneItems
	^ doneItems
		ifNil: [ doneItems := exercise done
				collect: [ :c | 
					(self instantiate: HSKCharacterProfile)
						model: c;
						yourself ] ]