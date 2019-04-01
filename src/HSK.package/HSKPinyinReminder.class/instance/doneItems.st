accessing
doneItems
	^ doneItems
		ifNil: [ current := (self instantiate: HSKCharacterProfile)
				model: exercise current subject ;
				yourself.
			doneItems := exercise done
				collect: [ :c | 
					(self instantiate: HSKCharacterProfile)
						model: c;
						yourself ] ]