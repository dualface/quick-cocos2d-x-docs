
## display.newCircle()

> display.newCircle(radius)

Creates a CCCircleShape object, draw a circle on screen.

CCCircleShape is a subclass of CCShapeNode.

CCShapeNode is a subclass of CCNode. all features from CCNode are valid, plus the following new features:

-   draw shape to screen
-   set shape line color
-   set shape line width

CCShapeNode have the following new methods:

-   ccColor4F getColor()
-   setColor(ccColor4F color)
-   int getLineWidth()
-   setLineWidth(int width)

CCCircleShape have the following new methods:

-   float getRadius()
-   setRadius(float radius)
-   float getAngle()
-   setAngle(float angle)
-   int getSegments()
-   setSegments(int segments)
-   bool isDrawLineToCenter()
-   setDrawLineToCenter(bool drawLineToCenter)
-   float getScaleX()
-   setScaleX(float scaleX)
-   float getScaleY()
-   setScaleY(float scaleY)

### Example

    local circle = display.newCircle(100) -- raidus = 100 points
    circle:setColor(255, 255, 255)        -- RGB = 0xffffff, white color
    circle:setSegments(128)               -- more segments appear smoother, default 32
    circle:setScaleY(0.8)                 -- Draw an ellipse

### Parameters:

-   float **radius**


### Returns

-   

-   CCCircleShape
