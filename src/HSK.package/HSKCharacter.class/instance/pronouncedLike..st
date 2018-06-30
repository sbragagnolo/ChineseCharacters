as yet unclassified
pronouncedLike: anOtherCharacter
	^ self species = anOtherCharacter species
		and: [ self = anOtherCharacter
				or: [ (self pinyin anySatisfy: [ :r | anOtherCharacter pinyin includes: r ])
						or: [ self zhuyin = anOtherCharacter zhuyin ] ] ]