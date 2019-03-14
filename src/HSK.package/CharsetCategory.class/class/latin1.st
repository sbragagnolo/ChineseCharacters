parsing
latin1
	latin1
		ifNil: [ latin1 := OrderedCollection new.
			latin1
				add:
					(CharsetCategory new
						interval: (0 to: Latin1 maxValue);
						category: 'Latin1';
						yourself) ].
	^ latin1