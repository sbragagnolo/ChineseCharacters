I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser.



HSKDictionaryLoader   loadFromCedict:  '/Users/sbragagn/cedict_ts.u8' asFileReference .
HSKCharacterProvider default .
SRSUser current xiaoWangZi .

FFIExternalEnumeration allSubclassesDo: #initialize.
FFIExternalStructure  allSubclassesDo: #rebuildFieldAccessors.

(GtkSimpleRunLoop install).
GtkSimpleRunLoop uniqueInstance start .
GtkApplication ensureRunning.

app := SpecApplication new.
app useBackend: #Gtk .
spec := (HSKPinyinReminder newApplication: app model: ( SRSUser current  goal   )) .
spec openWithSpec .

spec start.
spec stop .