
function log(o)
	print(o)
end

function logError(o)
	print("Error : ".. o);
end



local class = {}
function class(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end
