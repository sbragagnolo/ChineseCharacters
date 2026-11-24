tests
testTheCurrentUserIsASingletonAndResettable

	| first |

	SRSUser reset.

	self assert: SRSUser current == SRSUser current.

	first := SRSUser current.

	SRSUser reset.

	self deny: SRSUser current == first.

	SRSUser reset