
## display.newRect()

> display.newRect(width, height)

Creates a CCRectShape object, draw a rectangle on screen.

CCRectShape is a subclass of CCShapeNode, see [display.newCircle()](#anchor_display_newCircle) .

CCRectShape have the following new methods:

-   setSize(const CCSize& size)
-   bool isFill()
-   setFill(bool isFill)

### Example

    local rect = display.newRect(200, 100)
    rect:setFill(true)

### Parameters:

-   float **width**, float **height** size of rectangle


### Returns

-   

-   CCRectShape
