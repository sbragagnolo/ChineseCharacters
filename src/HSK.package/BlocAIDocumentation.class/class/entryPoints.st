documentation
entryPoints

	^ 'Entry points:
- Open a widget: (ToButton new labelText: Hello) openInSpace.
- Open a themed space: space := BlSpace new. space toTheme: ToBeeDarkTheme new. space root addChild: anElement. space show.
- Build a text: aChineseText := Chinese text asRopedText fontSize: 32; fontName: Microsoft YaHei, then BlTextElement new text: aChineseText.
- React: aBlElement addEventHandlerOn: BlPrimaryClickEvent do: anActionBlock.
- Animate: aTarget addAnimation: (BlNumberTransition new from: 0 to: 1; duration: 500 milliSeconds; onStepDo: anActionBlock). If the element is detached the animation starts on attach.
- Game loop: anElement enqueueTask: (BlDelayedTaskAction new ... ) or use BlRepeatedTaskAction for periodic work; check their exact API before use.'