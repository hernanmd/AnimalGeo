Class {
	#name : #BioAGEqu,
	#superclass : #BioAGBreed,
	#instVars : [
		'subSpecies',
		'draught',
		'meat'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGEqu class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_ecaballus.csv' fields: self fieldInstVarNames
]

{ #category : #accessing }
BioAGEqu class >> speciesName [

	^ 'Horse'
]
