
## display.newPolygon()

> display.newPolygon(points, scale)

Creates a CCPolygon object, draw a polygon on screen.

CCPolygon is a subclass of CCShapeNode, see [display.newCircle()](#anchor_display_newCircle) .

CCPolygon have the following new methods:

-   bool isFill()
-   setFill(bool isFill)
-   bool isClose()
-   setClose(bool isClose)

### Example

    local points = {
        {10, 10},  -- point 1
        {50, 50},  -- point 2
        {100, 10}, -- point 3
    }
    local polygon = display.newPolygon(points) -- draw a triangle
    polygon:setClose(true) -- draw line from last point to first point

### Parameters:

-   table **points** array of points

-   [_optional float **scale**_]


### Returns

-   

-   CCPolygonShape
