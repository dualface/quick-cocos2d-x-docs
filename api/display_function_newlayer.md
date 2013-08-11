
## display.newLayer()

> display.newLayer(noRGBA)

Creates CCLayer object.

CCLayer is a subclass of CCNode. all features from CCNode are valid, plus the following new features:

-   It can receive touches
-   It can receive Accelerometer input
-   It can receive device hardward keypad input

### Example

    local function onTouch(event, x, y)
        printf("touch %s, x = %0.2f, y = %0.2f", event, x, y)
    end

    local layer = display.newLayer()
    layer:addTouchEventListener(onTouch)
    layer:setTouchEnabled(true)


### Returns

-   CCLayer
