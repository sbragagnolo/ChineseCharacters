title and tooltip
addTitleAndTooltip
	self addChild: (ToLabel text: (factory styledText: page title fontSize: 20)).
	self tooltipText: page explanation