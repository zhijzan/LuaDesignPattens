
function log(o)
	print(o)
end

function logError(o)
	print("Error : ".. o);
end

class = {};

function class:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end
