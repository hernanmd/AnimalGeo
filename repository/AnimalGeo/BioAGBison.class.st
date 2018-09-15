Class {
	#name : #BioAGBison,
	#superclass : #BioAGBreed,
	#instVars : [
		'subSpecies',
		'draught',
		'meat',
		'horned',
		'dairy'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGBison class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_bbison.csv' fields: self fieldInstVarNames
]

{ #category : #accessing }
BioAGBison class >> speciesName [

	^ 'Buffalo'
]