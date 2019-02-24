accessing
register

	|app|
	app := WAAdmin register: self asApplicationAt: 'phonetic'.
	app 
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDevelopmentLibrary;
		addLibrary: TBSExamplesLibrary;
		addLibrary: TBSJasnyDeploymentLibrary;
		addLibrary: TBSVerticalTabsDeploymentLibrary