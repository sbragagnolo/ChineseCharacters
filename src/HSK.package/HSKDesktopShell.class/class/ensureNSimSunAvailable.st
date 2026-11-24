instance creation
ensureNSimSunAvailable

	| manager fontFile face |

	manager := AeFontManager globalInstance.

	(manager includesFamilyName: 'NSimSun') ifFalse: [

		fontFile := 'C:\\Windows\\Fonts\\simsun.ttc' asFileReference.

		fontFile exists ifTrue: [ manager registerFacesOnFile: fontFile ] ].

	(manager includesFamilyName: 'NSimSun') ifFalse: [ ^ self ].

	face := manager

		detectFamilyName: 'NSimSun'

		slant: AeFontSlant normal

		weight: AeFontWeight normal

		stretch: AeFontStretch normal

		ifNone: [ ^ self ].

	manager defaultFace: face