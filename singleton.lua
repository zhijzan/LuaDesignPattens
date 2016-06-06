Singleton = {}

function Singleton:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	o.instance = o;
	return o
end

function Singleton:Instance()
	if self.instance == nil then
		self.instance = self:New()
	end
	return self.instance
end



function TestSingleton()
	local GameManager = Singleton:New()

	function GameManager:Test()
		self.tmp = "test";
		print(self.tmp)
	end

	GameManager:Instance():Test();
end

