tests
testALockedContentHasNeverToBeReviewed

	| content |

	content := self aLockedKnownContent.

	13 timesRepeat: [ content submitReview: true on: #writing ].

	self deny: (content hasToReview: #writing at: DateAndTime now).

	self deny: (content hasToReview: #writing at: DateAndTime now + 7000 days)