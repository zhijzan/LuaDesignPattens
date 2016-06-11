require "func"

--[[
	门面模式：
		门面对象只是提供一个访问子系统的路径，不参与具体的业务逻辑
]]

local ClassA = class:New()
local ClassB = class:New()
local ClassC = class:New()

local Facade = class:New()

function Facade:Init()
	self.a = ClassA.New()
	self.b = ClassB.New()
	self.c = ClassC.New()
end

function Facade:Method1()
	self.a:DoSomething()
end


function Facade:Method2()
	self.b:DoSomething()
end



function Facade:Method3()
	self.c:DoSomething()
end