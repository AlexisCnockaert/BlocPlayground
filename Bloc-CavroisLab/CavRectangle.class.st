"
I'm a class creating the logic of a base rectangle used for the grid
"
Class {
	#name : 'CavRectangle',
	#superclass : 'Object',
	#instVars : [
		'neighbors'
	],
	#category : 'Bloc-CavroisLab',
	#package : 'Bloc-CavroisLab'
}

{ #category : 'adding' }
CavRectangle >> addNeighbor: aRectangle at: direction [

	neighbors at: direction put: aRectangle
]

{ #category : 'accessing' }
CavRectangle >> bottomNeighbor [

	^ neighbors at: #bottom ifAbsent: [ nil ]
]

{ #category : 'testing' }
CavRectangle >> canResizeBottom [

	^ false
]

{ #category : 'testing' }
CavRectangle >> canResizeLeft [

	^ false
]

{ #category : 'testing' }
CavRectangle >> canResizeRight [

	^ false
]

{ #category : 'testing' }
CavRectangle >> canResizeTop [

	^ false
]

{ #category : 'accessing' }
CavRectangle >> leftNeighbor [

	^ neighbors at: #left ifAbsent: [ nil ]
]

{ #category : 'accessing' }
CavRectangle >> neighbors [

	^ neighbors ifNil: [ ^ OrderedCollection new ]
]

{ #category : 'accessing' }
CavRectangle >> rightNeighbor [

	^ neighbors at: #right ifAbsent: [ nil ]
]

{ #category : 'accessing' }
CavRectangle >> topNeighbor [

	^ neighbors at: #top ifAbsent: [ nil ]
]
