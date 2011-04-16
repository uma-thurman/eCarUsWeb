class Widget
    constructor: () ->
        @root = document.createElement("div")
        @root.style.position = "absolute"
        document.documentElement.appendChild(@root)
        
    createCanvas: () ->
        @canvas = document.createElement("canvas")
        @root.appendChild(@canvas)

    resize: () ->
        @redraw()

    redraw: () ->
    


class Map extends Widget
    constructor: () ->
        super()
        @displayedObjects = []
        @shoudUpdate = true
        @createCanvas()
    redraw: () ->
        this.draw(obj) for obj in @displayedObjects

    draw: (aLandmark) ->
        context = @canvas.getContext("2d")
        x = @unproject(aLandmark.x)
        y = @unproject(aLandmark.y)

        representation = aLandmark.representation
        context.fillStyle = "rgb(200,0,0)"
        context.fillRect( x,y, 10,10) #representation
    unproject: (x) ->
        x

myMap = new Map()
lm = 
     x: 200 
     y: 10
     representation: new Image()
myMap.displayedObjects.push(lm)
myMap.redraw()
