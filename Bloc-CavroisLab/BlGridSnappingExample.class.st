"
I'm a grid example using drag n drop events on a rectangle
"
Class {
	#name : 'BlGridSnappingExample',
	#superclass : 'Object',
	#instVars : [
		'space',
		'draggableElement'
	],
	#category : 'Bloc-CavroisLab',
	#package : 'Bloc-CavroisLab'
}

{ #category : 'initialization' }
BlGridSnappingExample >> createDraggableElement [

	| currentPos snappedX |
	draggableElement := BlElement new
		                    extent: 50 @ 50;
		                    background: Color blue;
		                    border: (BlBorder paint: Color blue width: 2);
		                    geometry:
			                    (BlRoundedRectangleGeometry cornerRadius: 5);
		                    position: 20 @ 20.


	draggableElement addEventHandlerOn: BlDragStartEvent do: [ :event |
			event consumed: true.
			draggableElement
				background: Color red;
				border: (BlBorder paint: Color red width: 2).
			draggableElement preventMeAndChildrenMouseEvents ].

	draggableElement addEventHandlerOn: BlDragEvent do: [ :event |
			event consumed: true.
			draggableElement position: event position ].

	draggableElement addEventHandlerOn: BlDragEndEvent do: [ :event |
			event consumed: true.
			currentPos := draggableElement position.
			snappedX := (currentPos x / 40) rounded * 40.
			draggableElement position: snappedX @ currentPos y.
			draggableElement
				background: Color blue;
				border: (BlBorder paint: Color blue width: 2).
			draggableElement allowMeAndChildrenMouseEvents ].

	^ draggableElement
]

{ #category : 'initialization' }
BlGridSnappingExample >> createGridLines [

	| spaceWidth gridSpacing |
	spaceWidth := 600.
	gridSpacing := 40.

	0 to: spaceWidth by: gridSpacing do: [ :x |
			| gridLine |
			gridLine := BlElement new
				            extent: 1 @ 400;
				            background: Color lightGray;
				            position: x @ 0.
			space addChild: gridLine ]
]

{ #category : 'initialization' }
BlGridSnappingExample >> initialize [

	space := BlElement new
		         extent: 600 @ 400;
		         background: Color white;
		         border: (BlBorder paint: Color black width: 1).
	self createGridLines.
	draggableElement := self createDraggableElement.
	space addChild: draggableElement.

	^ space
]

{ #category : 'convenience' }
BlGridSnappingExample >> openInSpace [

	| newSpace |
	newSpace := BlSpace new.
	newSpace root addChild: self initialize.
	newSpace show
]

{ #category : 'running' }
BlGridSnappingExample >> run [

	<script: 'BlGridSnappingExample new openInSpace'>
	
]
