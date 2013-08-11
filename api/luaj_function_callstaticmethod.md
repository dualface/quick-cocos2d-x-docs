
## luaj.callStaticMethod()

> luaj.callStaticMethod(className, methodName, args, sig)

Call Java Class Static Method

### Example:

    local className = "com/flurry/android/FlurryAgent"
    local args = {"APP_START"}
    local sig  = "(Ljava/lang/String;)V"
    local ok = luaj.callStaticMethod(className, "logEvent", args, sig)
    if ok then
        -- call success
    else
        -- call failure
    end

### Parameters:

-   string **className** Java class name
-   string **methodName** Method name
-   [_optional table **args**_] Arguments pass to Java
-   [_optional string **sig**_] Java Method Signature


> Java Method Signature reference: [JNI Types and Data Structures](http://docs.oracle.com/javase/7/docs/technotes/guides/jni/spec/types.html#wp16432)

### Returns:

-   boolean call success or failure
-   mixed Java method returned value
