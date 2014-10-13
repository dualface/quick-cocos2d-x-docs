1.新建一个global.lua文件，全局的module需要在此注册，这样才能在全局中显示

格式如下：

----------------------
-- @module global

----------------------
-- （注释）命名空间
-- @field [parent=#global] cc#cc cc preloaded module

-------------------------------
-- （注释）全局module
-- the AudioEngine module
-- @field [parent=#global] AudioEngine#AudioEngine AudioEngine preloaded module

提示的时候就是
cc
AudioEngine




2.命名空间cc,ccui的定义。

--------------------------------
-- @module cc

--------------------------------------------------------
--（注释）module绑定
-- the cc Director
-- @field [parent=#cc] Director#Director Director preloaded module

--------------------------------------------------------
--（注释）字段绑定
-- the cc var
-- @field [parent=#cc] #int var preloaded module

提示的时候就是
cc.Director
cc.var




3.module的定义
重点就在@extend代表其继承关系，比如Node继承自Ref
@parent_module代表其命名空间，比如为cc（虽然cc中有绑定它，但此处加上这个Node就不会因为命名空间而单独显示）

--------------------------------
-- @module Node 
-- @extend Ref
-- @parent_module cc

--------------------------------
-- (注释) 不带返回值
-- @function [parent=#Node] updateDisplayedOpacity 
-- @param self
-- @param #unsigned char parentOpacity

--------------------------------
-- (注释) 带返回值
-- @function [parent=#Node] getTag 
-- @param self
-- @return int#int ret (return value: int)

提示的时候就是
@extend Ref
cc.Node.这里可以显示Node自己的方法还有继承的Ref的方法
@parent_module cc
单敲Node提示不出来，只有在cc.Node中可以提示。
如果没这个标志，单独敲Node是能提示出来。





4.overload的提示
有些方法是overload，但编辑器无法识别同名的方法
所以如果有2个或多个同名的overload方法，就要按这样格式写。

--------------------------------
-- @overload self, cc.Node  
-- @overload self, cc.Node, int         
-- @overload self, cc.Node, int, int         
-- @overload self, cc.Node, int, string         
-- @function [parent=#Node] addChild
-- @param self
-- @param #cc.Node child
-- @param #int localZOrder
-- @param #string name

提示的时候就能出overload
cc.Node.addChild(cc.Node)
cc.Node.addChild(cc.Node, int)
cc.Node.addChild(cc.Node, int, int)
cc.Node.addChild(cc.Node, int, string)


总结，注意点
1.全局的对象记得建立一个global.lua注册，需要绑定的module记得帮到对应的命名空间中。
2.@extend Ref @parent_module 还有@overlaod写法是后面我们补充的，其他的都可以按lua-binding格式导出，不会有问题。