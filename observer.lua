
require "func"

local Observable = class:New()

function Observable:Init()
	self.observers = {}
end

function Observable:AddObserver(observer)
	table.insert(self.observers,observer)
end

function Composite:RemoveComponent(observer)
	local i = 1
	while( self.observers[i]) do
		if(self.observers[i] == observer) then
			table.remove(self.observers,i)
		end
	end
end


function Observable:NotifyObservers()

end