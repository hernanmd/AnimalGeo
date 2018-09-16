Class {
	#name : #BioAGCanis,
	#superclass : #BioAGBreed,
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
BioAGCanis class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_cfamiliaris.csv' fields: self fieldInstVarNames
]

{ #category : #accessing }
BioAGCanis class >> speciesName [

	^ 'Dog'
]

{ #category : #accessing }
BioAGCanis >> dairy [
	^ dairy
]

{ #category : #accessing }
BioAGCanis >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioAGCanis >> draught [
	^ draught
]

{ #category : #accessing }
BioAGCanis >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioAGCanis >> horned [
	^ horned
]

{ #category : #accessing }
BioAGCanis >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioAGCanis >> meat [
	^ meat
]

{ #category : #accessing }
BioAGCanis >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioAGCanis >> subspecies [
	^ subSpecies
]

{ #category : #accessing }
BioAGCanis >> subspecies: anObject [
	subSpecies := anObject
]
