Class {
	#name : #BioAnimalGeoCFamiliaris,
	#superclass : #BioAnimalGeoBreed,
	#instVars : [
		'subSpecies',
		'meat',
		'dairy',
		'horned',
		'draught'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAnimalGeoCFamiliaris class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_cfamiliaris.csv' fields: self fieldInstVarNames
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> dairy [
	^ dairy
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> draught [
	^ draught
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> horned [
	^ horned
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> meat [
	^ meat
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> subSpecies [
	^ subSpecies
]

{ #category : #accessing }
BioAnimalGeoCFamiliaris >> subSpecies: anObject [
	subSpecies := anObject
]
