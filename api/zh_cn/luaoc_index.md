
# luaoc

Call Objective-C form Lua, and call Lua from Objective-C.

-   Call Objective-C Class Static Method from Lua
-   Pass aruments to Objective-C
-   Pass Lua function to Objective-C
-   Call Lua function from Objective-C

## HOW TO USE:

~~~

local function onLogin(result)
    if result == "ok" then
        print("login ok")
    else
        print("login failure, error message = ", result)
    end
end

local args = {
    username  = "dualface",
    password  = "123456",
    autologin = true,
    callback  = onLogin
}
local ok, ret = luaoc.callStaticMethod("MySDK", "login", args)
if ok then
    -- call success
    print("ret = ", ret)
else
    -- call failure
    print("error code = ", ret)
end
~~~

### Objective-C method:

~~~ .objectivec
#include "CCLuaObjcBridge.h"

+ (NSString *)login:(NSDictionary *)dict
{
    NSString *username = [dict objectForKey:@"username"];
    NSString *password = [dict objectForKey:@"password"];
    BOOL autologin = [[dict objectForKey:@"autologin"] boolValue];
    int callback = [[dict objectForKey:@"callback"] intValue];

    if (.....)
    {
        CCLuaObjcBridge::callLuaFunctionById(callback, "ok");
    }
    else
    {
        CCLuaObjcBridge::callLuaFunctionById(callback, "error message");
    }
    CCLuaObjcBridge::releaseLuaFunctionById(callback);

    return @"something";
}
~~~

