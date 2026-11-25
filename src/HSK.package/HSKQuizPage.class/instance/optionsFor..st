actions
optionsFor: aTarget

	| distractors |

	distractors := goal characters reject: [ :c | c == aTarget ].

	distractors := distractors

		sort: [ :a :b | (a knowledge phoneticDistance: aTarget knowledge) > (b knowledge phoneticDistance: aTarget knowledge) ].

	^ (distractors first: 3) , {aTarget} shuffle