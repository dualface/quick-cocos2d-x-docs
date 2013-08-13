
## transition.removeAction()

> transition.removeAction(action)

Stop the action.

### Example:

    local action = transition.moveTo(sprite, {time = 2.0, x = 100, y = 100})
    ....
    transition.removeAction(action) -- stop moving

### Parameters:

-   CCAction **action**
