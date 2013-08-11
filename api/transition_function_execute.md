
## transition.execute()

> transition.execute(target, action, args)

Execute an action with a target.

### Example:

    -- moving right target 100 points, durations of 2.0 seconds.
    local action = CCMoveBy:create(ccp(100, 0), 0.2)

    local args = {
        delay = 3.0,                        -- before moving, delay 3.0 seconds
        easing = "CCEaseBackInOut",         -- use CCEaseBackInOut for easing
        onComplete = function()             -- call function after moving completed
            echo("MOVING COMPLETED")
        end,
    }
    transition.execute(sprite, action, args)

Note: **Other transiton methods can also use the same args parameters.**

### Parameters:

-   CCNode **target**

-   CCAction **action**

-   [_optional table **args**_]
