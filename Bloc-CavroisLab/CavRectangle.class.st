"
I'm a class creating the logic of a base rectangle used for the grid
"
Class {
	#name : 'CavRectangle',
	#superclass : 'Object',
	#instVars : [
		'isLeftResizable',
		'isTopResizable',
		'isRightResizable',
		'isBottomResizable',
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

{ #category : 'initialization' }
CavRectangle >> initialize [

	super initialize. 
	self initializeSides. 
]

{ #category : 'initialization' }
CavRectangle >> initializeSides [

	isLeftResizable := true.
	isRightResizable := true.
	isTopResizable := true.
	isBottomResizable := true
]

{ #category : 'accessing' }
CavRectangle >> isBottomResizable [

^ isBottomResizable 
]

{ #category : 'accessing' }
CavRectangle >> isBottomResizable: aBoolean [

	isBottomResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> isLeftResizable [

^ isLeftResizable 
]

{ #category : 'accessing' }
CavRectangle >> isLeftResizable: aBoolean [

	isLeftResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> isRightResizable [

^ isRightResizable 
]

{ #category : 'accessing' }
CavRectangle >> isRightResizable: aBoolean [

	isRightResizable := aBoolean
]

{ #category : 'accessing' }
CavRectangle >> isTopResizable [
 
^ isTopResizable
]

{ #category : 'accessing' }
CavRectangle >> isTopResizable: aBoolean [

	isTopResizable := aBoolean
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
