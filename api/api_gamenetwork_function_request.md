
## GameNetwork.request()

> GameNetwork.request(command, ...)

Send or request information to/from the game network provider:

**Syntax:**

    GameNetwork.request( command [, params ...] )

**Example:**

    -- For OpenFeint:
    -- setHighScore, leaderboard id, score, display text
    GameNetwork.request("setHighScore", "abc123", 99, "99 sec")

    -- unlockAchievement, achievement id
    GameNetwork.request("unlockAchievement", "1242345322")


**OpenFeint**

Command supported by the OpenFeint provider:

-   getAchievements:

        local achievements = framework.api.GameNetwork.request("getAchievements")
        for achievementId, achievement in pairs(achievements) do
            -- achievement.id (string)
            -- achievement.title (string)
            -- achievement.description (string)
            -- achievement.iconUrl (string)
            -- achievement.gameScore (integer)
            -- achievement.isUnlocked (boolean)
            -- achievement.isSecret (boolean)
        end

-   unlockAchievement: achievement id

        framework.api.GameNetwork.request("unlockAchievement", "1242345322")

-   getLeaderboards:

        local leaderboards = framework.api.GameNetwork.request("getLeaderboards")
        for i, leaderboard = ipairs(leaderboards) do
            -- leaderboard.id (string)
            -- leaderboard.name (string)
            -- leaderboard.currentUserScore (integer)
            -- leaderboard.currentUserScoreDisplayText (string)
            -- leaderboard.descendingScoreOrder (boolean)
        end

-   setHighScore: leaderboard id, score, display text

        framework.api.GameNetwork.request("setHighScore", "abc123", 99, "99 sec")


**GameCenter**

Coming soon.

<br />


### Parameters

-   command
Command string supported by the provider (case insensitive).

-   ...
Parmeters used in the commands.


### Returns

-   Nothing.
