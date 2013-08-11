
## transition.stopTarget()

> transition.stopTarget(target)

Stop all actions for the target.

### Example:

    transition.moveTo(sprite, {time = 2.0, x = 100, y = 100})
    transition.fadeOut(sprite, {time = 2.0})
    ....
    transition.stopTarget(sprite) -- stop moving, stop fades


### Parameters:

-   CCNode **target**
