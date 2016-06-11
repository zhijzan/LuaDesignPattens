
require "func"


local Component = class:New()

function Component:DoSomething()

end


local Composite = Component:New()

function Composite:Init()
	self.componentArray = {}
end

function Composite:AddComponent(componet)
	table.insert(self.componentArray,componet)
end

function Composite:RemoveComponent(componet)
	local i = 1
	while( self.componentArray[i]) do
		if(self.componentArray[i] == componet) then
			table.remove(self.componentArray,i)
		end
	end
end
