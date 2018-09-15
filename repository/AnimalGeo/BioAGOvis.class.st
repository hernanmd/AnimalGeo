Class {
	#name : #BioAGOvis,
	#superclass : #BioAGBreed,
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
BioAGOvis class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_oaries.csv' fields: self fieldInstVarNames
]

{ #category : #accessing }
BioAGOvis class >> speciesName [

	^ 'Sheep'
]
