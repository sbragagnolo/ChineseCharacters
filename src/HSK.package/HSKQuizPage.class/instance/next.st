actions
next

	| candidates oldTarget |

	oldTarget := target.

	candidates := goal characters reject: [ :c | c == oldTarget ].

	target := candidates atRandom.

	options := self optionsFor: target.

	answerResult := nil