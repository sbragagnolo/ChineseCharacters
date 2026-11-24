tests
testDetectingMissingCharactersBehaves

	| corpus |

	corpus := HSKCharacterProvider default.

	self should: [ corpus detect: [ :c | c traditional = $⿕ ] ] raise: Error.

	self assert: (corpus detect: [ :c | c traditional = $⿕ ] ifNone: [ 42 ]) equals: 42