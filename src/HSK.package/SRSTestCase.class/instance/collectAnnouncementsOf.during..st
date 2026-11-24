tests - fixtures
collectAnnouncementsOf: announcementClasses during: aBlock

	| announcer collected |

	announcer := Announcer new.

	collected := Dictionary new.

	announcementClasses

		do: [ :each | | bag |

			bag := OrderedCollection new.

			announcer

				when: each

				do: [ :ann | bag add: ann ]

				for: bag.

			collected at: each put: bag ].

	aBlock value: announcer.

	^ collected