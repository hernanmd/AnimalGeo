accessing
readFAOLocalRaceList: fileName

	| records |

	records := self readFAORaceList: fileName.
	^ records collect: #beLocal
