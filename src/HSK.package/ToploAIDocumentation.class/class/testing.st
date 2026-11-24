documentation
testing

	^ 'Testing strategy for Toplo based code:
- Structure/creation tests run without a space: instantiate the element (ToPane new, ToButton new labelText: X) and compose children; this is what the HSK tests do.
- To verify skin/theme phase behavior, open a real BlSpace with toTheme: and use the lifecycle events; keep such tests minimal.
- For interaction flows use BlDevScripter (see BlocAIDocumentation) driving the space headlessly.
- Do not rely on exact pixel rendering in tests: assert structure (children count/ids) and state of the domain models instead.'