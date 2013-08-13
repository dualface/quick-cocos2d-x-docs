
## network.createHTTPRequest()

> network.createHTTPRequest(callback, url, method)

~~~ lua

#define kCCHTTPRequestMethodGET  0
#define kCCHTTPRequestMethodPOST 1

#define kCCHTTPRequestAcceptEncodingIdentity 0
#define kCCHTTPRequestAcceptEncodingGzip     1
#define kCCHTTPRequestAcceptEncodingDeflate  2

#define kCCHTTPRequestStateIdle         0
#define kCCHTTPRequestStateCleared      1
#define kCCHTTPRequestStateInProgress   2
#define kCCHTTPRequestStateCompleted    3
#define kCCHTTPRequestStateCancelled    4
#define kCCHTTPRequestStateFailed       5


function callback(event)
    local ok = (event.name == "completed")
    local request = event.request

    if not ok then
        -- request failure
        print(request:getErrorCode(), request:getErrorMessage())
        return
    end

    local code = request:getResponseStatusCode()
    if code ~= 200 then
        -- code is HTTP response code
        print(code)
        return
    end

    local response = request:getResponseString()
    print(response)
end

local request = network.createHTTPRequest(callback, url, "POST")
request:addPOSTValue("KEY", "VALUE")
request:start()

~~~
