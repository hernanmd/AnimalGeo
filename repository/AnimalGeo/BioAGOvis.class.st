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

{ #category : #accessing }
BioAGOvis >> dairy [
	^ dairy
]

{ #category : #accessing }
BioAGOvis >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioAGOvis >> hobby [
	^ hobby
]

{ #category : #accessing }
BioAGOvis >> hobby: anObject [
	hobby := anObject
]

{ #category : #accessing }
BioAGOvis >> meat [
	^ meat
]

{ #category : #accessing }
BioAGOvis >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioAGOvis >> research [
	^ research
]

{ #category : #accessing }
BioAGOvis >> research: anObject [
	research := anObject
]

{ #category : #accessing }
BioAGOvis >> subSpecies [
	^ subSpecies
]

{ #category : #accessing }
BioAGOvis >> subSpecies: anObject [
	subSpecies := anObject
]

{ #category : #accessing }
BioAGOvis >> vegMgmt [
	^ vegMgmt
]

{ #category : #accessing }
BioAGOvis >> vegMgmt: anObject [
	vegMgmt := anObject
]

{ #category : #accessing }
BioAGOvis >> wool [
	^ wool
]

{ #category : #accessing }
BioAGOvis >> wool: anObject [
	wool := anObject
]
