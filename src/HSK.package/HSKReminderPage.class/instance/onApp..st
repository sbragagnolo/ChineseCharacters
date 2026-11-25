initialization
onApp: anHSKApp

	exercise := SRSPhoneticExercise new.

	exercise goal: (anHSKApp currentUser goal).

	app := anHSKApp.

	processed := 0