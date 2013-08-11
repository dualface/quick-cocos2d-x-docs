
## display.newSprite()

> display.newSprite(filename, x, y)

Creates a CCSprite object.

CCSprite can be created with an image, or with a sprite frame.

### Example

    -- create with an image
    local sprite1 = display.newSprite("hello1.png")

    -- create with a sprite frame
    local sprite2 = display.newSprite("#frame0001.png")


### Parameters

-   string **filename** image filename or sprite frame name. sprite frame name have prefix character
-   [_optional float **x**_]
-   [_optional float **y**_] initial position or the sprite


### Returns

-   CCSprite
