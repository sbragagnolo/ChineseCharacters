as yet unclassified
radicalDistanceTo: anOther
	| distance |
	distance := ByteArray new: (self radicals size max: anOther radicals size).
	1 to: (self radicals size min: anOther radicals size) do: [ :idx | 
		distance
			at: idx
			put:
				[ self radicals at: idx.
				anOther radicals at: idx ] value ]