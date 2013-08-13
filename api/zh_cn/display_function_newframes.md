
## display.newFrames()

> display.newFrames(pattern, begin, length, isReversed)

Creates multiple frames by pattern.

### Example

    -- create array of CCSpriteFrame [walk0001.png -> walk0020.png]
    local frames = display.newFrames("walk%04d.png", 1, 20)

### Parameters:

-   string **pattern**

-   int **begin**

-   int **length**

-   [_optional bool **isReversed**_]


### Returns

-   

-   table
