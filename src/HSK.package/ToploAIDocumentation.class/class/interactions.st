documentation
interactions

	^ 'User interaction:
- IMPORTANT: in this image ToElement does NOT implement when:do: : subscribe element events with addEventHandlerOn: anEventClass do: aBlock, the BlElement API, e.g. aButton addEventHandlerOn: ToClickedSkinEvent do: aBlock. The when:do: claim of older Toplo documentation is wrong here.
- Buttons announce skin state events; the simple way is addEventHandlerOn: ToClickedSkinEvent do: aBlock. Checkable widgets announce ToCheckedSkinEvent/ToUncheckedSkinEvent and can share state via groups.
- Lists: selection events and data source updates come through ToObservableCollection events and list skin events.
- Popups, tooltips and context menus: anchored windows opened on demand via the window managers (ToAnchoredWindowManager, ToTooltipManager, ToPopupWindowManager).
- Keyboard: Toplo installs shortcut stores (ToShortcutsStore) on widgets that support shortcuts.'