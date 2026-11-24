documentation
interactions

	^ 'User interaction:
- ToElement implements when: anEventClass do: aBlock (unlike raw BlElement, that one uses addEventHandlerOn:do:). Prefer when:do: on Toplo widgets and addEventHandlerOn:do: on pure Bloc elements used inside them.
- Buttons: a click announces skin state events; the simple way is aButton when: ToClickedSkinEvent do: aBlock, or use configuration actions when available. Checkable widgets announce ToCheckedSkinEvent/ToUncheckedSkinEvent and can share state via group/ groups (ToCheckableGroup...).
- Lists: selection events and data source updates come through ToObservableCollection events and list skin events.
- Popups/tooltips/context menus: anchored windows opened on demand via the window managers (ToAnchoredWindowManager, ToTooltipManager, ToPopupWindowManager); elements with context menu trait TToElementWithContextMenu.
- Keyboard: Toplo installs shortcut stores (ToShortcutsStore) on widgets that support shortcuts.'