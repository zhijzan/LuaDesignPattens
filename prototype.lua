
local Prototype = {}
--[[
	原型模式
	ctor不会被调用 
]]
function Prototype:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end


function Prototype:Clone() --浅复制
	return self
end