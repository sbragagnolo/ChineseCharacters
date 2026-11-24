documentation
caveats

	^ 'Known limitations/gotchas:
- One parent per element: adding an element already owned by another parent raises BlAlreadyAddedAsChildError.
- BlElement has no when:do:, use addEventHandlerOn:do: (when:do: exists only on Toplo widgets).
- There is no fontFamilyName: (it is fontName:) and no animation: setter (it is addAnimation:).
- Tasks/animations are NOT reusable, build a fresh instance per use.
- Text attributes mutate the BlText instance: style a copy for different renderings (asRopedText gives a fresh one).
- BlText replaces CrLf by a single new-line marker while measuring.
- Space closing must be explicit: rely on closeOnPicking or handle BlSpaceClosedEvent; there is no automatic app-cleanup.
- CJK rendering needs a font family present in the OS; test early with the real corpus characters (HSKCharacterProvider default).'