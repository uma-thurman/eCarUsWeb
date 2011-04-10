class Widget
    constructor: () ->
        @root = document.createElement("div")
        @root.style.position = "absolute"
        document.append(@root)
        

    resize: () ->
        @redraw()

    redraw: () ->
    


class Map extends Widget
    constructor: () ->
        @displayedObjects = []
        @shoudUpdate = true
        @hasCanvas = true

    redraw: () ->
        draw(obj) for obj in @displayedObjects

    draw: (aLandmark) ->
        x = unproject(aLandmark.x)
        y = unproject(aLandmark.y)

        representation = aLandmark.representation
        @canvas.image x,y,representation
