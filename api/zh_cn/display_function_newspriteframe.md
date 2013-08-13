
## display.newSpriteFrame()

> display.newSpriteFrame(frameName)

Returns an Sprite Frame that was previously added.

### Example

    display.addSpriteFramesWithFile("sprites.plist", "sprites.png")
    local sprite = display.newSprite("#sprite0001")

    local frame2 = display.newSpriteFrame("sprite0002.png")
    local frame3 = display.newSpriteFrame("sprite0003.png")

    ....

    sprite:setDisplayFrame(frame2)  -- change sprite texture without recreate
    -- or
    sprite:setDisplayFrame(frame3)

### Parameters:

-   string **frameName** name of sprite frame, without prefix character '#'.


### Returns

-   

-   CCSpriteFrame
