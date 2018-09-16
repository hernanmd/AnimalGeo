"
Read CSV data to merge from Mason repository.

BioAnimalGeoBT readData.
"
Class {
	#name : #BioAGBTaurus,
	#superclass : #BioAGBreed,
	#instVars : [
		'subspecies',
		'meat',
		'dairy',
		'horned',
		'draught'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGBTaurus class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_btaurus.csv'
]

{ #category : #accessing }
BioAGBTaurus class >> speciesName [

	^ 'Cattle'
]

{ #category : #accessing }
BioAGBTaurus >> dairy [
	^ dairy
]

{ #category : #accessing }
BioAGBTaurus >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioAGBTaurus >> draught [
	^ draught
]

{ #category : #accessing }
BioAGBTaurus >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioAGBTaurus >> horned [
	^ horned
]

{ #category : #accessing }
BioAGBTaurus >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioAGBTaurus >> meat [
	^ meat
]

{ #category : #accessing }
BioAGBTaurus >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioAGBTaurus >> subspecies [
	^ subspecies
]

{ #category : #accessing }
BioAGBTaurus >> subspecies: anObject [
	subspecies := anObject
]
