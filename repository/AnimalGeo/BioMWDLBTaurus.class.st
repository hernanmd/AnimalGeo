"
Read CSV data to merge from Mason repository.

BioAnimalGeoBT readData.
"
Class {
	#name : #BioMWDLBTaurus,
	#superclass : #BioMWDLBreed,
	#instVars : [
		'subspecies',
		'meat',
		'dairy',
		'horned',
		'draught'
	],
	#category : #'AnimalGeo-MWDLB'
}

{ #category : #accessing }
BioMWDLBTaurus class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_btaurus.csv'
]

{ #category : #accessing }
BioMWDLBTaurus class >> speciesName [

	^ 'Cattle'
]

{ #category : #accessing }
BioMWDLBTaurus >> dairy [
	^ dairy
]

{ #category : #accessing }
BioMWDLBTaurus >> dairy: anObject [
	dairy := anObject
]

{ #category : #accessing }
BioMWDLBTaurus >> draught [
	^ draught
]

{ #category : #accessing }
BioMWDLBTaurus >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioMWDLBTaurus >> horned [
	^ horned
]

{ #category : #accessing }
BioMWDLBTaurus >> horned: anObject [
	horned := anObject
]

{ #category : #accessing }
BioMWDLBTaurus >> meat [
	^ meat
]

{ #category : #accessing }
BioMWDLBTaurus >> meat: anObject [
	meat := anObject
]

{ #category : #accessing }
BioMWDLBTaurus >> subspecies [
	^ subspecies
]

{ #category : #accessing }
BioMWDLBTaurus >> subspecies: anObject [
	subspecies := anObject
]
