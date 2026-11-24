building
buildPlaceholder

	| label |

	self removeChildren.

	label := factory bigLabelFor: '戲 - game coming in the next initiative'.

	label id: #gamePlaceholder.

	self addChild: label