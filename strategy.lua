
local Strategy = {}

function Strategy:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

function Strategy:DoSomething()
	print("do")
end



local ConcreteStrategy1 = Strategy:New()

function ConcreteStrategy1:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

function ConcreteStrategy1:DoSomething()
	print("do by method1")
end

local Context = {}

function Context:New(o,strategy)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	o.strategy = strategy;
	return o
end


function Context:DoSomething()
	self.strategy:DoSomething()

end


function TestStrategy()
	local strategy = ConcreteStrategy1:New()
	local context = Context:New({},strategy)
	context:DoSomething()
end


TestStrategy()