initialization
initialize

	super initialize.

	self vertical: true.

	self matchParent.

	self

		buildHeader;

		buildKnowledge;

		buildExercises;

		buildStatus