tests
testASuccessfulReviewIsAnnounced

	| increased levelups content announcer |

	increased := OrderedCollection new.

	levelups := OrderedCollection new.

	announcer := Announcer new.

	announcer when: SRSLevelIncreased do: [ :a | increased add: a ] for: increased.

	announcer when: SRSLevelUp do: [ :a | levelups add: a ] for: levelups.

	content := SRSKnownContent new.

	content unlock.

	content submitReview: true at: DateAndTime now on: #writing withAnnouncer: announcer.

	self assert: increased size equals: 1.

	self assert: levelups size equals: 1.

	self assert: increased anyOne levelObject == (content skill: #writing).