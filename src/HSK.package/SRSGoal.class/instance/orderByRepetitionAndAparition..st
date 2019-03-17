ordering
orderByRepetitionAndAparition: aCollection
	| repetitions |
	repetitions := aCollection groupedBy: #yourself.
	^ ((((aCollection
		collectWithIndex: [ :w :i | 
			w
				->
					(((repetitions at: w) size * 2 + (aCollection size - i)) / 30
						roundUpTo: 1) ]) groupedBy: #key)
		collect: [ :w | (w value collect: #value) sum ]) associations
		asSortedCollection: [ :a :b | a value > b value ]) collect: #key