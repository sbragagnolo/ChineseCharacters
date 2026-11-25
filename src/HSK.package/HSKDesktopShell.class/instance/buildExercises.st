building
buildExercises

	exerciseTabs := ToTabPaneElement new.

	exerciseTabs id: #exercises.

	exerciseTabs isFlowable: false.

	exerciseTabs matchParent.

	exerciseTabs itemBuilder: [ :aTabItem :aData |

		aTabItem label: (ToLabel text: (aData asRopedText fontName: 'NSimSun'; yourself)).

		aTabItem paneBuilder: [ :aBody :aTabItemItem :aHolder | aBody addChild: (self exercisePaneFor: aData) ] ].

	exerciseTabs addTabItemData: 'Pinyin Reminder'.

	exerciseTabs addTabItemData: 'Pinyin Quiz'.

	self addChild: exerciseTabs