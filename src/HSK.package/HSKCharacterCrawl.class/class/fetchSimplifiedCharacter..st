actions
fetchSimplifiedCharacter: stream
	stream reset.
	^ stream
		upToAll: 'Simplified Chinese">simp.</a>';
		upToAll: 'href="/wiki/';
		upToAll: 'title="';
		next