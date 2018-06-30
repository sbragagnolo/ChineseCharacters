as yet unclassified
phoneticDistance: anOtherCharacter
	self = anOtherCharacter
		ifTrue: [ ^ -1 ].
	^ (self pinyin
		cartesianWith: anOtherCharacter pinyin
		collect: [ :sr :tr | 
			| score left right |
			score := 0.
			sr size = tr size
				ifTrue: [ score := score + 1 ].
			" begining "
			left := sr padLeftTo: (sr size max: tr size) with: Character space.
			right := tr padLeftTo: (sr size max: tr size) with: Character space.
			score := score
				+
					(left
						species: Array
						with: right
						collect: [ :s :s2 | 
							s = s2
								ifTrue: [ 1 ]
								ifFalse: [ (s = $  or: [ s2 = $  ])
										ifTrue: [ 0 ]
										ifFalse: [ -1 ] ] ]) sum.

			" end  "
			left := sr padRightTo: (sr size max: tr size) with: Character space.
			right := tr padRightTo: (sr size max: tr size) with: Character space.
			score := score
				+
					(left
						species: Array
						with: right
						collect: [ :s :s2 | 
							s = s2
								ifTrue: [ 1 ]
								ifFalse: [ (s = $  or: [ s2 = $  ])
										ifTrue: [ 0 ]
										ifFalse: [ -1 ] ] ]) sum.
			score ]) sum sum