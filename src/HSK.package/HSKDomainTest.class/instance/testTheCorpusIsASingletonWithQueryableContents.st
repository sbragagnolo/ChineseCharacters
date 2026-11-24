tests
testTheCorpusIsASingletonWithQueryableContents

	| corpus |

	corpus := HSKCharacterProvider default.

	self assert: corpus == HSKCharacterProvider default.

	self assert: (corpus select: [ :c | c traditional = $你 ]) size equals: 1.

	self assert: (corpus detect: [ :c | c traditional = $你 ]) traditional equals: $你