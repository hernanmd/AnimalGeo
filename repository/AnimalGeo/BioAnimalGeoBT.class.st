"
Read CSV data to merge from Mason repository.

BioAnimalGeoBT readData.
"
Class {
	#name : #BioAnimalGeoBT,
	#superclass : #BioAnimalGeoBreed,
	#instVars : [
		'subSpecies',
		'meat',
		'dairy',
		'horned',
		'draught'
	],
	#category : 'AnimalGeo-Core'
}

{ #category : #accessing }
BioAnimalGeoBT class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_btaurus.csv' fields: self fieldInstVarNames
]

{ #category : #accessing }
BioAnimalGeoBT >> dairy [
	^ dairy
]

{ #category : #accessing }
BioAnimalGeoBT >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioAnimalGeoBT >> draught [
	^ draught
]

{ #category : #accessing }
BioAnimalGeoBT >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioAnimalGeoBT >> horned [
	^ horned
]

{ #category : #accessing }
BioAnimalGeoBT >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioAnimalGeoBT >> meat [
	^ meat
]

{ #category : #accessing }
BioAnimalGeoBT >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioAnimalGeoBT >> subSpecies [
	^ subSpecies
]

{ #category : #accessing }
BioAnimalGeoBT >> subSpecies: anObject [
	subSpecies := anObject
]
