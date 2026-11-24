documentation
extending

	^ 'Code extension strategy:
- New character data: add an instance variable and accessors to HSKCharacter; if it must persist, regenerate HSKCharacterProvider encodedInstances with encodeInstancesInto: and replace the literal.
- New dictionary source: add a class-side loader method to HSKDictionaryLoader and reuse register:meaning: and trie. Keep HSKTrie as the only word index.
- New exercise page: build the page MODEL as a plain object (see HSKReminderPage/HSKQuizPage wrapping the SRS engine), then wire it in HSKDesktopShell buildExercises/buildExercises views; notifications flow through the domain announcer (SRSLevelUp and friends registered in subscribeToCurrentUser).
- New skill: add a skillX accessor in SRSKnownContent (the existing listening tag is misspelled listenting) and use the same tag from the exercise.
- New page in the shell: add a tab in HSKDesktopShell buildExercises and an exercisePaneFor: branch; keep widgets as thin consumers of the page models so the future game can plug another page without touching the domain.
- New presenter (legacy Spec): subclass ComposablePresenterWithModel, implement initializeWidgets and defaultSpec, and register the page in HSKSpec initializeWidgets.
- New module: add a class-side hskN method to HSKModule and extend the whitelist in HSKModule module:. Add the missing number, punctuation and hskPunctuation methods if those modules are used.
- Text rendering in the app: always ToLabel text: (aBlRopedText fontName: NSimSun; yourself) (see ToploAIDocumentation textRendering); keep the AeFontManager default registration in HSKDesktopShell ensureNSimSunAvailable.
- Keep new persisted data as base64 STON literals to follow the existing no-files approach.'