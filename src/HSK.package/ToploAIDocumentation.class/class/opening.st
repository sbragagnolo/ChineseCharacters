documentation
opening

	^ 'Opening a user interface:
- Simplest: anElement openInSpace. It creates a BlSpace, adds the element, shows the space, installs the default theme on the fly and answers the space.
- Themed way: space := BlSpace new. space toTheme: ToBeeDarkTheme new. space root addChild: theRootPane. space show. Set the theme BEFORE showing: Toplo installs skin phases on the space and every ToElement below the root then gets its theme skins.
- Space lifecycle events: ToAddedToSpaceEvent, ToRemovedFromSpaceEvent, ToOpenedSkinEvent, ToClosedSkinEvent.
- This image has no Toplo-Widget-Window package: the top level is a plain BlSpace, and ToInnerWindow is only for inner frames.'