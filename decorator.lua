
require "func"

--[[
	装饰模式：
		一种继承关系的代替方案


]]

local Component = {name = "Component"}

function Component:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

function Component:Operate()
	print(self.name)
	print("Component:Operate")
end


local Decorator = Component:New()

function Decorator:New(o)
	o = o or {}
	o.name = "Decorator"
	setmetatable(o,self)
	self.__index = self
	return o
end


function Decorator:Method()
	print("Decorator:Method")
end

function Decorator:Operate()
	print(self.name)
	Component.Operate(self);
end


function TestDecorator()
	local component = Component:New()
	component = Decorator:New()
	component:Operate()
end

TestDecorator()



