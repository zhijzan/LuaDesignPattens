
require "func"
--[[
	subject 	被观察者
	observer 	观察者
]]
local Observable = class:New()

function Observable:Init()
	self.observers = {}
end

function Observable:AddObserver(observer)
	table.insert(self.observers,observer)
end

function Observable:RemoveObserver(observer)
	local i = 1
	while( self.observers[i]) do
		if(self.observers[i] == observer) then
			table.remove(self.observers,i)
		end
	end
end


function Observable:NotifyObservers(message)
	for i,v in ipairs(self.observers) do
		self.observers[i]:Update(message)
	end
end


local Observer = class:New()

function Observer:Update(message)

end