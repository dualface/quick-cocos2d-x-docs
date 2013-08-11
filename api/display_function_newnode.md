
## display.newNode()

> display.newNode(noRGBA)

Creates a node object.

Anything thats gets drawn or contains things that get drawn is a CCNode. The most popular CCNodes are: CCScene, CCLayer, CCSprite, CCMenu.

A CCNode is a "void" object. It doesn't have a texture

The main features of a CCNode are:

-   They can contain other CCNode nodes (addChild, getChildByTag, removeChild, etc)
-   They can schedule periodic callback (schedule, unschedule, etc)
-   They can execute actions (runAction, stopAction, etc)

Features of CCNode:

-   position
-   scale (x, y)
-   rotation (in degrees, clockwise)
-   CCGridBase (to do mesh transformations)
-   anchor point
-   size
-   visible
-   z-order

### Example

    local group = display.newNode()     -- create container
    group:addChild(sprite1)             -- add sprites to container
    group:addChild(sprite2)             -- add sprites to container
    transition.moveBy(group, {time = 2.0, x = 100})


### Returns

-   CCNode
