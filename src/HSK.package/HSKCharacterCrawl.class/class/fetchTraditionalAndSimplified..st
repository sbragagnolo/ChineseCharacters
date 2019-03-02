fethcing
fetchTraditionalAndSimplified: stream
	stream reset.
	^ stream
		upToAll:
			'<th style="padding: 0.5em;border: 1px solid #aaa;background: #E0FFFF;font-weight: normal;font-size: smaller;" colspan="2"><a href="/wiki/Simplified_Chinese" title="Simplified Chinese">simp.</a> and <a href="/wiki/Traditional_Chinese" title="Traditional Chinese">trad.</a><br /></th>
<td style="padding: 0.5em; background-color:white;border-right: 1px solid #aaa;border: 1px solid #aaa; font-size:x-large" lang="zh" class="Hani"><strong class="selflink">';
		next