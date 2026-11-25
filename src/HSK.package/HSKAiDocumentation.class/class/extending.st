documentation
extending

	^ 'Code extension strategy:
- New character data: add an instance variable and accessors to HSKCharacter; if it must persist, regenerate HSKCharacterProvider encodedInstances with encodeInstancesInto: and replace the literal.
- New dictionary source: add a class-side loader method to HSKDictionaryLoader and reuse register:meaning: and trie. Keep HSKTrie as the only word index.
- New exercise page: build the MODEL as a plain object (see HSKReminderPage/HSKQuizPage wrapping the SRS engine) with class-side title and explanation (English, instance-side delegates with self class); build the VIEW subclassing HSKExerciseView with a page:factory: constructor and an initializeWidgets that starts with super initializeWidgets; wire the exercise in HSKDesktopShell class>>menuEntries as {id. title. tooltip. selector} plus a showXxxPage; notifications flow through the domain announcer (SRSLevelUp and friends) via subscribeToCurrentUser.
- New skill: add a skillX accessor in SRSKnownContent (the existing listening tag is misspelled listenting) and use the same tag from the exercise.
- New page in the shell: add an entry {id. title. tooltip. selector} to HSKDesktopShell class>>menuEntries and a showXxxPage that builds the view and shows it in the viewport (showInViewport:); keep widgets as thin consumers of the page models so a new page plugs in without touching the domain.
- New presenter (legacy Spec): subclass ComposablePresenterWithModel, implement initializeWidgets and defaultSpec, and register the page in HSKSpec initializeWidgets.
- New module: add a class-side hskN method to HSKModule and extend the whitelist in HSKModule module:. Add the missing number, punctuation and hskPunctuation methods if those modules are used.
- Text rendering in the app: always through HSKWidgetFactory (styledText:/labelFor:/bigLabelFor:) or ToLabel text: with a roped text fontName: NSimSun; tooltips with tooltipText:; keep the AeFontManager default registration in HSKDesktopShell ensureNSimSunAvailable.
- Keep new persisted data as base64 STON literals to follow the existing no-files approach.'