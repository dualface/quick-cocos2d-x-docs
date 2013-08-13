
## GameNetwork.init()

> GameNetwork.init(providerName, params)

Initializes an app with the parameters (e.g., product key, secret, display name, etc.)
required by the game network provider.

**Syntax:**

    -- OpenFeint
    framework.api.GameNetwork.init("openfeint", {
        productKey  = ...,
        secret      = ...,
        displayName = ...,
    })

    -- GameCenter
    framework.api.GameNetwork.init("gamecenter", {
        listener = ...
    })

**Example:**

    require("framework.api.GameNetwork")
    framework.api.GameNetwork.init("openfeint", {
        productKey  = ...,
        secret      = ...,
        displayName = ...
    })

    --
    local achievements = framework.api.GameNetwork.request("getAchievements")
    dump(achievements, "All achievements")

    local leaderboards = framework.api.GameNetwork.request("getLeaderboards")
    dump(leaderboards, "All leaderboards")

    local score = math.random(100, 200)
    local displayText = string.format("My score is %d", score)
    framework.api.GameNetwork.request("setHighScore", "916960912", score, displayText)

    local i = math.random(#achievements)
    framework.api.GameNetwork.request("unlockAchievement", achievements[i].id)

    framework.api.GameNetwork.show("dashboard")

**Note:**

GameNetwork only supports one provider at a time (you cannot call this API multiple times for
different providers).

<br />


### Parameters

-   providerName
String of the game network provider. ("openfeint" or "gamecenter", case insensitive)

-   params
Additional parameters required by the "openfeint" provider.

-   **productKey**: String of your application's OpenFeint product key (provided by OpenFeint).
-   **secret**: String of your application's product secret (provided by OpenFeint).
-   **displayName**: String of the name to display in OpenFeint leaderboards and other views.

If using GameCenter, the params.listener allows you to specify a callback function.
(Instead of secret keys, your bundle identifier is used automatically to identify your app.)
On successful login, event.data will be 'true'. On unsuccessful init, event.data will be false.
When problems such as network errors occur, event.errorCode (integer) and event.errorString
(string) will be defined.

Also be aware that iOS backgrounding will cause your app to automatically log out your user
from Game Center. When the app is resumed, Game Center will automatically try to re-login
your user. The callback function you specified here will be invoked again telling you the
result of that re-login attempt. Thus, this callback function exists for the life of your
application. With Game Center, it is advisable to avoid calling other Game Center functions
when the user is not logged in.


### Returns

-   Nothing.
