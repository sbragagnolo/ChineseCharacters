tests
testAFailedReviewIsAnnouncedAsADecrease

	| announcements content announcer |

	announcements := OrderedCollection new.

	announcer := Announcer new.

	announcer when: SRSLevelDecreased do: [ :a | announcements add: a ] for: announcements.

	content := SRSKnownContent new.

	content unlock.

	content submitReview: false at: DateAndTime now on: #writing withAnnouncer: announcer.

	self assert: announcements size equals: 1.

	self assert: announcements anyOne oldLevel equals: 1.

	self assert: content overAllLevel level equals: 1