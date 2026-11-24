documentation
widgets

	^ 'Main widgets (all subclass ToElement and can be used detached):
- ToButton: labelText:/labelText:icon:, iconImage:, beVertical/beHorizontal, beCheckable/checked:/group for toggle or radio behavior; the label is a ToLabel.
- ToLabel: ToLabel text: aBlText or a String, with icon support.
- ToPane: the layout container with directions and dividers, see Toplo-Widget-Pane. ToEdgePane for top/left/right/bottom zones, ToScrollableElement for scrolling, placeholder layers for empty states.
- ToListElement: list with data source, items, selection, filtering and sieving. ToTabPane and ToTabGroupElement: notebook-like tabs, perfect for exercise pages.
- ToSelect, ToCheckbox, ToToggleButton, ToImage, ToProgressBar, ToTag, ToAccordion, ToInnerWindow, menus and anchored windows (ToAnchoredWindow with placements for popups and tooltips).
- ToTripletElement: start/middle/end container pattern used by buttons and list rows.
- To react to user interaction subscribe the Toplo skin events: ToClickedSkinEvent, ToPressedSkinEvent, ToHoveredSkinEvent, ToCheckedSkinEvent, ToSelectedSkinEvent, ToOpenedSkinEvent, all being subclasses of ToSkinEvent.'