Class {
	#name : #BioMWDLBBubalis,
	#superclass : #BioMWDLBreed,
	#instVars : [
		'subSpecies',
		'draught',
		'meat',
		'horned',
		'dairy'
	],
	#category : #'AnimalGeo-MWDLB'
}

{ #category : #accessing }
BioMWDLBBubalis class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_bbison.csv'
]

{ #category : #accessing }
BioMWDLBBubalis class >> speciesName [

	^ 'Buffalo'
]

{ #category : #accessing }
BioMWDLBBubalis >> dairy [
	^ dairy
]

{ #category : #accessing }
BioMWDLBBubalis >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioMWDLBBubalis >> draught [
	^ draught
]

{ #category : #accessing }
BioMWDLBBubalis >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioMWDLBBubalis >> horned [
	^ horned
]

{ #category : #accessing }
BioMWDLBBubalis >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioMWDLBBubalis >> meat [
	^ meat
]

{ #category : #accessing }
BioMWDLBBubalis >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioMWDLBBubalis >> subspecies [
	^ subSpecies
]

{ #category : #accessing }
BioMWDLBBubalis >> subspecies: anObject [
	subSpecies := anObject
]
