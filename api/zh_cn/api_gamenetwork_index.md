
# api.GameNetwork

Game Network allows access to 3rd party libraries that enables social gaming features
such as public leaderboards and achievements.

Currently, the OpenFeint and Game Center (iOS only) libraries are supported.

If you want to use both OpenFeint and Game Center, iOS OpenFeint will post achievement
updates and leaderboard updates to Game Center provided OFGameCenter.plist is present
in the project folder.

See http://support.openfeint.com/dev/game-center-compatibility/ for details.

@module framework.api.GameNetwork

