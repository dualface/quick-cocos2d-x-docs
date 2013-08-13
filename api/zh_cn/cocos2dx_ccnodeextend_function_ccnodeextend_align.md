
## CCNodeExtend:align()

> CCNodeExtend:align(anchorPoint, x, y)

Set node object anchorPoint and position.

### Example:

    sprite:align(display.LEFT_TOP, 100, 100)

### Parameters:

-   enum **anchorPoint** is one of the following:

    enum                                              | Value
    ------------------------------------------------- | ----------------------
    display.CENTER                                    | CCPoint(0.5, 0.5)
    display.TOP_LEFT,<br />display.LEFT_TOP           | CCPoint(  0,   1)
    display.TOP_CENTER,<br />display.CENTER_TOP       | CCPoint(0.5,   1)
    display.TOP_RIGHT,<br />display.RIGHT_TOP         | CCPoint(  1,   1)
    display.CENTER_LEFT,<br />display.LEFT_CENTER     | CCPoint(  0, 0.5)
    display.CENTER_RIGHT,<br />display.RIGHT_CENTER   | CCPoint(  1, 0.5)
    display.BOTTOM_LEFT,<br />display.LEFT_BOTTOM     | CCPoint(  0,   0)
    display.BOTTOM_RIGHT,<br />display.RIGHT_BOTTOM   | CCPoint(  1,   0)
    display.BOTTOM_CENTER,<br />display.CENTER_BOTTOM | CCPoint(0.5,   0)

-   [_optional float **x**, float **y**_] position of the node
