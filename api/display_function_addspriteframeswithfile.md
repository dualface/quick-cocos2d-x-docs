
## display.addSpriteFramesWithFile()

> display.addSpriteFramesWithFile(plistFilename, image)

Adds multiple Sprite Frames from image and plist file.

Creates sprite sheet tools:

-   [Texture Packer](http://www.codeandweb.com/texturepacker)
-   [Zwoptex](http://www.zwopple.com/zwoptex/)

### Example

    display.addSpriteFramesWithFile("sprites.plist", "sprites.png")
    local sprite1 = display.newSprite("#sprite0001.png")

### Parameters:

-   string **plistFilename** filename of plist file

-   string **image** filename of image
