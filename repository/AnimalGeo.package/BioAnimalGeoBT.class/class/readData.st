accessing
readData
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_btaurus.csv' fields: self fieldInstVarNames