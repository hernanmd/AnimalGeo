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

{ #category : #accessing }
BioAGBison >> dairy [
	^ dairy
]

{ #category : #accessing }
BioAGBison >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioAGBison >> draught [
	^ draught
]

{ #category : #accessing }
BioAGBison >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioAGBison >> horned [
	^ horned
]

{ #category : #accessing }
BioAGBison >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioAGBison >> meat [
	^ meat
]

{ #category : #accessing }
BioAGBison >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioAGBison >> subspecies [
	^ subSpecies
]

{ #category : #accessing }
BioAGBison >> subspecies: anObject [
	subSpecies := anObject
]
