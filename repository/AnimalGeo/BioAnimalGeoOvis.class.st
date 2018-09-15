Class {
	#name : #BioAnimalGeoOvis,
	#superclass : #BioAnimalGeoBreed,
	#instVars : [
		'subSpecies',
		'dairy',
		'wool',
		'research',
		'vegMgmt',
		'hobby',
		'meat'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAnimalGeoOvis class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_oaries.csv' fields: self fieldInstVarNames
]
