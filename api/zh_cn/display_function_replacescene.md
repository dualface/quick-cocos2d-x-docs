
## display.replaceScene()

> display.replaceScene(newScene, transitionType, time, more)

Replaces the running scene with a new one.

### Example

    display.replaceScene(scene1)
    display.replaceScene(scene2, "CROSSFADE", 0.5)
    display.replaceScene(scene3, "FADE", 0.5, ccc3(255, 255, 255))


### Parameters

-   CCScene **newScene** scene of want to display
-   [_optional string **transitionType**_] is one of the following

Transition Type | Note
--------------- | ----
CROSSFADE       | Cross fades two scenes using the CCRenderTexture object
FADE            | Fade out the outgoing scene and then fade in the incoming scene
FADEBL          | Fade the tiles of the outgoing scene from the top-right corner to the bottom-left corner
FADEDOWN        | Fade the tiles of the outgoing scene from the top to the bottom
FADETR          | Fade the tiles of the outgoing scene from the left-bottom corner the to top-right corner
FADEUP          | Fade the tiles of the outgoing scene from the bottom to the top
FLIPANGULAR     | Flips the screen half horizontally and half vertically
FLIPX           | Flips the screen horizontally
FLIPY           | Flips the screen vertically
JUMPZOOM        | Zoom out and jump the outgoing scene, and then jump and zoom in the incoming
MOVEINB         | Move in from to the bottom the incoming scene
MOVEINL         | Move in from to the left the incoming scene
MOVEINR         | Move in from to the right the incoming scene
MOVEINT         | Move in from to the top the incoming scene
PAGETURN        | A transition which peels back the bottom right hand corner of a scene to transition to the scene beneath it simulating a page turn
ROTOZOOM        | Rotate and zoom out the outgoing scene, and then rotate and zoom in the incoming
SHRINKGROW      | Shrink the outgoing scene while grow the incoming scene
SLIDEINB        | Slide in the incoming scene from the bottom border
SLIDEINL        | Slide in the incoming scene from the left border
SLIDEINR        | Slide in the incoming scene from the right border
SLIDEINT        | Slide in the incoming scene from the top border
SPLITCOLS       | The odd columns goes upwards while the even columns goes downwards
SPLITROWS       | The odd rows goes to the left while the even rows goes to the right
TURNOFFTILES    | Turn off the tiles of the outgoing scene in random order
ZOOMFLIPANGULAR | Flips the screen half horizontally and half vertically doing a little zooming out/in
ZOOMFLIPX       | Flips the screen horizontally doing a zoom out/in The front face is the outgoing scene and the back face is the incoming scene
ZOOMFLIPY       | Flips the screen vertically doing a little zooming out/in The front face is the outgoing scene and the back face is the incoming scene

-   [_optional float **time**_] duration of the transition
-   [_optional mixed **more**_] parameter for the transition
