accessing
entries

	self user isNil ifTrue: [ ^ #() ].

	^ self user goal unlockedContent