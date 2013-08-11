
## timer:addCountdown()

> timer:addCountdown(eventName, countdown, interval)

添加一个计时器。

在计时器倒计时完成前，会按照 **interval** 参数指定的时间间隔触发 **eventName** 参数指定的事件。
事件参数则是倒计时还剩余的时间。

在计时器倒计时完成后，同样会触发 **eventName** 参数指定的事件。此时事件的参数是 0，表示倒计时完成。

因此在事件处理函数中，可以通过事件参数判断倒计时是否已经结束：

    local Timer = require("framework.api.Timer")
    local appTimer = Timer.new()

    -- 响应 CITYHALL_UPGRADE_TIMER 事件
    local function onCityHallUpgradeTimer(event)
        if event.countdown > 0 then
            -- 倒计时还未结束，更新用户界面上显示的时间
            ....
        else
            -- 倒计时已经结束，更新用户界面显示升级后的城防大厅
        end
    end

    -- 注册事件
    appTimer:addEventListener("CITYHALL_UPGRADE_TIMER", onCityHallUpgradeTimer)
    -- 城防大厅升级需要 3600 秒，每 30 秒更新一次界面显示
    appTimer:addCountdown("CITYHALL_UPGRADE_TIMER", 3600, 30)

考虑移动设备的特殊性，计时器可能存在一定误差，所以 **interval** 参数的最小值是 2 秒。
在界面上需要显示倒计时的地方，应该以“分”为单位。例如显示为“2 小时 23 分”，这样可以避免误差带来的问题。

### 注意

计时器在倒计时结束并触发事件后，会自动删除。关联到这个计时器的所有事件处理函数也会被取消。


**Parameters:**

-   eventName: 计时器事件的名称
-   countdown: 倒计时（秒）
-   interval（可选）: 检查倒计时的时间间隔，最小为 5 秒，最长为 120 秒，如果未指定则默认为 30 秒
