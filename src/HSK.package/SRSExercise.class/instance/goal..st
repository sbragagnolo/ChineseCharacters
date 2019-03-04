initialization
goal: aGoal
	goal := aGoal.
	stream := (goal characters readStream next: amount) readStream.