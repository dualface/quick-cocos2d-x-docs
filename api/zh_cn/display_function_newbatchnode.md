
## display.newBatchNode()

> display.newBatchNode(image, capacity)

Creates CCSpriteBatchNode object from an image.

CCSpriteBatchNode is like a batch node: if it contains children, it will draw them in 1 single OpenGL call (often known as "batch draw").

A CCSpriteBatchNode can reference one and only one texture (one image file, one texture atlas). Only the CCSprites that are contained in that texture can be added to the CCSpriteBatchNode. All CCSprites added to a CCSpriteBatchNode are drawn in one OpenGL ES draw call. If the CCSprites are not added to a CCSpriteBatchNode then an OpenGL ES draw call will be needed for each one, which is less efficient.

Limitations:

-   The only object that is accepted as child (or grandchild, grand-grandchild, etc...) is CCSprite or any subclass of CCSprite. eg: particles, labels and layer can't be added to a CCSpriteBatchNode.
-   Either all its children are Aliased or Antialiased. It can't be a mix. This is because "alias" is a property of the texture, and all the sprites share the same texture.

### Example

    local imageName = "sprites.png"
    display.addSpriteFramesWithFile("sprites.plist", imageName) -- load sprite frames

    -- it will draw them in 1 single OpenGL call
    local batch = display.newBatch(imageName)
    for i = 1, 100 do
        local sprite = display.newSprite("#sprite0001.png")
        batch:addChild(sprite)
    end

    --

    -- it will draw them use 100 OpenGL call
    local group = display.newNode()
    for i = 1, 100 do
        local sprite = display.newSprite("#sprite0001.png")
        group:addChild(sprite)
    end

### Parameters:

-   string **image** filename of image

-   [_optional int **capacity**_] estimated capacity of batch


### Returns

-   

-   CCSpriteBatchNode
