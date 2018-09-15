Class {
	#name : #BioAnimalGeoEqu,
	#superclass : #BioAnimalGeoBreed,
	#instVars : [
		'subSpecies',
		'draught',
		'meat'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAnimalGeoEqu class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_ecaballus.csv' fields: self fieldInstVarNames
]
