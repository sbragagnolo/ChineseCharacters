documentation
entryPoints

	^ 'Entry points:
- Hello: (ToButton new labelText: Hello) openInSpace.
- Themed shell: space := BlSpace new. space toTheme: ToBeeTheme new. space root addChild: theRootPane. space title: HSK. space extent: 1000 asPoint. space show.
- React: aToButton when: ToClickedSkinEvent do: anActionBlock.
- App pages: the body can be a ToTabPane whose tabs are exercise panes; the knowledge evolution view can be a ToListElement or a raw Bloc composition of BlTextElement Chinese glyphs.
- Keep the space reference in the application model so exercises can be changed without closing the window.'