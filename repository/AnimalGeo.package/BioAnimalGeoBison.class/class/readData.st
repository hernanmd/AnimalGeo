accessing
readData
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_bbison.csv' fields: self fieldInstVarNames