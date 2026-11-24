tests
testErrorFlagsAndPrinting

	| me |

	me := HSKCharacter new traditional: $我; simplified: $我.

	self deny: me hasError.

	me hasErrorLoading.

	self assert: me hasError.

	self assert: me printString equals: 'HSK(我)'.

	self assert: me asCharacter equals: $我.

	self assert: me asUnicode equals: $我 asUnicode.

	self assert: (me asHSKString first == me)