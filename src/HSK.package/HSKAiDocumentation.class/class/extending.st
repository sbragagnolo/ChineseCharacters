documentation
extending
	^ 'Code extension strategy:
- New character data: add an instance variable and accessors to HSKCharacter; if it must persist, regenerate HSKCharacterProvider encodedInstances with encodeInstancesInto: and replace the literal.
- New dictionary source: add a class-side loader method to HSKDictionaryLoader and reuse register:meaning: and trie. Keep HSKTrie as the only word index.
- New exercise: subclass SRSExercise, implement skill and next (see SRSPhoneticExercise), use a skill tag stored by SRSKnownContent skill:, and add a page in HSKSpec.
- New skill: add a skillX accessor in SRSKnownContent (the existing listening tag is misspelled listenting) and use the same tag from the exercise.
- New presenter: subclass ComposablePresenterWithModel, implement initializeWidgets and defaultSpec, and register the page in HSKSpec initializeWidgets.
- New module: add a class-side hskN method to HSKModule and extend the whitelist in HSKModule module:. Add the missing number, punctuation and hskPunctuation methods if those modules are used.
- Keep new persisted data as base64 STON literals to follow the existing no-files approach.'