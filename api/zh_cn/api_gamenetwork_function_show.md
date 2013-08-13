
## GameNetwork.show()

> GameNetwork.show(command, ...)

Shows (displays) information from game network provider on the screen.

For OpenFeint provider, launches the OpenFeint dashboard in one of the following configurations: leaderboards, challenges, achievements, friends, playing or high score.

**Syntax:**

    framework.api.GameNetwork.show(command [, params] )

**Example:**

    framework.api.GameNetwork("leaderboards")

**OpenFeint:**

Command supported by the OpenFeint provider.

-   leaderboard: leaderboard id

        framework.api.GameNetwork.show("leaderboard", "abc123")

-   leaderboards:

        framework.api.GameNetwork.show("leaderboards")

-   achievements:

        framework.api.GameNetwork.show("achievements")

-   challenges:

        framework.api.GameNetwork.show("challenges")

-   friends:

        framework.api.GameNetwork.show("friends")

-   playing:

        framework.api.GameNetwork.show("playing")

-   dashboard:

        framework.api.GameNetwork.show("dashboard")


**GameCenter:**

Coming soon.

<br />


### Parameters

-   command
Strings supported by provider.

-   ...
Parameters used by command.


### Returns

-   Nothing.
