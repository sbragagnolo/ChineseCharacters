accessing
modelChanged
	self model
		ifNotNil: [ exercise := SRSPhoneticExercise new
				goal: self model;
				yourself.
			self loadData ]