Class {
	#name : #BioAGEqu,
	#superclass : #BioAGBreed,
	#instVars : [
		'draught',
		'meat',
		'hobby'
	],
	#category : #'AnimalGeo-Core'
}

{ #category : #accessing }
BioAGEqu class >> readData [
	" Answer a <Collection> with receiver's parsed data "

	^ self readDataFrom: 'ag_ecaballus.csv'
]

{ #category : #accessing }
BioAGEqu class >> speciesName [

	^ 'Horse'
]

{ #category : #accessing }
BioAGEqu >> draught [
	^ draught
]

{ #category : #accessing }
BioAGEqu >> draught: anObject [
	draught := anObject
]

{ #category : #accessing }
BioAGEqu >> hobby [
	^ hobby
]

{ #category : #accessing }
BioAGEqu >> hobby: anObject [
	hobby := anObject
]

{ #category : #accessing }
BioAGEqu >> meat [
	^ meat
]

{ #category : #accessing }
BioAGEqu >> meat: anObject [
	meat := anObject
]
