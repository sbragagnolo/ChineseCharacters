documentation
textRendering

	^ 'CJK text rendering in this Toplo/Bloc environment (lessons learned while building the HSK shell):
- The label-level fontName: (ToLabel attributes builder path) is UNRELIABLE: on skinned labels under a Bee theme the drawn glyphs fell back to the font manager default face and rendered as the notdef box with cross, even though the BlText still carried the BlFontFamilyAttribute. Without a theme it worked; with the theme it did not.
- The robust fix is font-manager level: register the Windows font file (AeFontManager globalInstance registerFacesOnFile: C:\Windows\Fonts\simsun.ttc asFileReference) and then set the NSimSun face as AeFontManager globalInstance defaultFace: with detectFamilyName:slant:AeFontSlant normal weight:AeFontWeight normal stretch:AeFontStretch normal ifNone:. After that every skinned text renders with NSimSun.
- Canonical text pattern in HSK code: every text is ToLabel text: (aBlRopedText fontName: NSimSun; yourself) and sizes ride on the same rope (fontSize: on the cascade). Buttons and tab items take a styled ToLabel through label:. Text editors keep codeFontName: NSimSun only where editors are used.
- HSKDesktopShell class ensureNSimSunAvailable performs the registration and the defaultFace assignment; it is called from on: so all shell creation paths are covered.'