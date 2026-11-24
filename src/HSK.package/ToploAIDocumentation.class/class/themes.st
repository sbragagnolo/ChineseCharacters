documentation
themes

	^ 'Themes and styling:
- ToTheme is the base; concrete themes in Toplo-Theme-Bee: ToBeeTheme (light, default) and ToBeeDarkTheme. ToBeeTheme is an Ant Design inspired theme with token properties (colorPrimary, colorText, colorBgContainer, colorBorder, borderRadius, controlHeight, fontSize...).
- Apply the theme to the space with space toTheme: aTheme; elements query it with lookupTheme and can hold a localTheme.
- Skins: each widget draws through a skin (ToSkin subclasses / ToRawSkin, ToScriptableSkin). The skin manager (ToSkinManager) listens to space phases and installs skins. Widgets can be withNullSkin or request a new skin with requestNewSkin.
- Stylesheets: ToStyleSheet rules (ToStyleRule, ToStyleScript, CSS like printer) style whole subtrees via element selectors (ToElementSelector, ToIdSelector, ToTypeSelector...). Element properties: token properties (addTokenNamed:withValue:), stamp properties (addStamp:), writable properties.
- For the HSK app: always rely on the Bee theme first; avoid custom skins until the look is decided.'