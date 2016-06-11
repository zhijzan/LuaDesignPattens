require "func"


local Target = class:New()

function Target:Request()
end


local ConcreteTarget = Target:New()
function ConcreteTarget:Request()
	print("if you need any help,pls call me")
end


local Adaptee = class:New();

function Adaptee:DoSomething()
	print("Adaptee:DoSomething")
end


local Adapter = Target:New()

function Adapter:Init(adaptee)
	self.adaptee = adaptee
end

function Adapter:Request()
	print(self.adaptee)
	self.adaptee:DoSomething()
end

function TestAdapter()
	local target = ConcreteTarget:New()
	local adaptee = Adaptee:New()
	local adapter = Adapter:New()
	adapter:Init(adaptee)

	target:Request()
	adapter:Request()


end

TestAdapter()




