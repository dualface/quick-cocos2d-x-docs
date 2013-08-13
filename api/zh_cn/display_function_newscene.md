
## display.newScene()

> display.newScene(name)

Creates a scene.

A scene (implemented with the CCScene object) is more or less an independent piece of the app workflow. Some people may call them “screens” or “stages”. Your app can have many scenes, but only one of them is active at a given time.

### Example

    local scene = display.newScene("HelloScene")
    display.replaceScene(scene) -- setup running scene


### Parameters

-   [_optional string **name**_] name of scene


### Returns

-   CCScene
