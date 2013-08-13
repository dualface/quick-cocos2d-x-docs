
## object:addEventListener()

> object:addEventListener(eventName, listener)

Adds a listener to the object’s list of listeners, and return handle of listener. When the named event occurs, the listener will be invoked and be supplied with a table representing the event.

**Usage:**

    -- Create an object that listens to events
    local player = Player.new()
    framework.api.EventProtocol.extend(player)

    -- Setup listener
    local handle
    local function onPlayerDead(event)
        -- event.name   == "PLAYER_DEAD"
        -- event.object == player
        player:removeEventListener("PLAYER_DEAD", handle)
    end
    handle = player:addEventListener("PLAYER_DEAD", onPlayerDead)

    -- Sometime later, create an event and dispatch it
    player:dispatchEvent({name = "PLAYER_DEAD"})

~~


### Parameters

-   eventName
String specifying the name of the event to listen for.

@tparam function listener
If the event's event.name matches this string, listener will be invoked.


### Returns

-   Nothing.
