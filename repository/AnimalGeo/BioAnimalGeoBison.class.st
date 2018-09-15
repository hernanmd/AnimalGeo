Class {
	#name : #BioAnimalGeoBison,
	#superclass : #BioAnimalGeoBreed,
	#instVars : [
		'subSpecies',
		'draught',
		'meat',
		'horned',
		'dairy'
	],
	#category : 'AnimalGeo-Core'
}

{ #category : #accessing }
BioAnimalGeoBison class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_bbison.csv' fields: self fieldInstVarNames
]
