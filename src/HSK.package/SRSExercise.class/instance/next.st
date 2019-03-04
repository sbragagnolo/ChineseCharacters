initialization
next
	^ current := HSKPhoneticTest new
		subject: (SRSKnownContent for: stream next);
		yourself