instance creation
openOn: anHSKApp

	| shell space |

	shell := self on: anHSKApp.

	space := BlSpace new.

	space toTheme: ToBeeTheme new.

	space root addChild: shell.

	space title: 'HSK'.

	space extent: 800 @ 600.

	space show.

	^ shell