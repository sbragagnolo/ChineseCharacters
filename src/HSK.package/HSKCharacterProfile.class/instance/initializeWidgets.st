initialization
initializeWidgets
"	character := self instantiate: AthensStaticPresenter.
	character surfaceExtent: 10 @ 10.
	character drawBlock: [ :aCanvas : box  | self drawCharacterOn: aCanvas box: box ]."
	character := self newLabel.
	level := self newLabel.
	"level
		min: 1;
		max: SRSKnowledgeLevel rateValues last;
		quantum: 1;
		value: 500.
	SRSKnowledgeLevel rateValues
		with: SRSKnowledgeLevel rateTexts
		do: [ :val :text | level addMark: text at: val ]"