running
setUp
	subject := SRSKnownContent new
		knowledge: (HSKCharacterProvider default detect: [ :t | t traditional = $有 ]);
		yourself