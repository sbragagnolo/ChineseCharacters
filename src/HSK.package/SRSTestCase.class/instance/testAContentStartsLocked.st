tests
testAContentStartsLocked

	| content |

	content := SRSKnownContent new.

	self assert: content isLocked.

	self deny: (content hasToReview: #writing).

	content unlock.

	self assert: content isUnlocked.

	self assert: (content hasToReview: #writing)