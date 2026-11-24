tests - fixtures
aKnownContentWithSuccesses: anAmount on: aSkill

	| content |

	content := self aKnownContent.

	anAmount

		timesRepeat: [ content

				submitReview: true

				at: self reviewDate

				on: aSkill

				withAnnouncer: nil ].

	^ content