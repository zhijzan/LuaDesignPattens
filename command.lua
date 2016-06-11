
require "func"

--[[
	命令模式：
		优点 ：1类间解耦 2可扩展性 3结合其他模式非常优秀
		缺点 ：命令多会导致类膨胀的很厉害
]]



--  command
local Command = {}

function Command:New(o)
	return class(o)
end

function Command:Execute()
	-- Do Something ....
end


-- receiver

local Receiver ={}

function Receiver:New()
	class(o)
end

function Receiver:DoSomething()
	print("Receiver:DoSomething");
end


-- concrete command

local ConcreteCommand = Command:New()

function ConcreteCommand:New(o,receiver)
	o = class(o)
	o.receiver = receiver
	return o
end

function ConcreteCommand:Execute()
	self.receiver:DoSomething()
end


-- invoker
local Invoker = {}

function Invoker:New(o)
	o = class(o)
	o.comand1 = ConcreteCommand:New()
	return o
end

function Invoker:Action()
	self.comand1:Execute();
end






