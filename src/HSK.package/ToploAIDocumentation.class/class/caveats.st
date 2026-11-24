documentation
caveats

	^ 'Gotchas and current image facts:
- Toplo widgets expect to live under a space root that carries a theme; a detached ToElement renders raw until skinned. Prefer opening one themed space for the whole app.
- Themes are applied through space phases: widgets added after the theme installation still get their skins, but changing themes repeatedly at run time is expensive.
- This Toplo version has no main window class and no ToSpacePresenter: the space is the window. Build the app shell as a ToPane added to the space root.
- Skins can be replaced by test skins in tests; widgets work detached for structure tests, but skin and theme behavior needs a space.
- Many Toplo API details differ from older versions: check existing selectors before writing, this is the Pharo 14 package layout.'