
## transition.sequence()

> transition.sequence(actions)

Create an array of sequenceable actions given an table.

### Example:

    local function onComplete()
        echo("SEQUENCE COMPLETED")
    end

    local action = transition.sequence({
        CCMoveBy:create(sprite, ccp(100, 0)),   -- moving right
        CCDelayTime:create(1.0),                -- delay 1 seconds
        CCMoveBy:create(sprite, ccp(0, 100)),   -- moving up
        CCCallFunc:create(onComplete),          -- call function
    })

    sprite:runAction(action)

### Parameters:

-   table **actions**
