tests
testAContentStartsLockedAndIsUnlockedByUnlock

	| content |

	content := self aLockedKnownContent.

	self assert: content isLocked.

	self deny: (content hasToReview: #writing).

	content unlock.

	self assert: content isUnlocked