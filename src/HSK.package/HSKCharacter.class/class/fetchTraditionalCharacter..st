actions
fetchTraditionalCharacter: stream
	stream reset.
	^ stream
		upToAll: '"Traditional Chinese">trad.</a>';
		upToAll: '<strong class="selflink">';
		next