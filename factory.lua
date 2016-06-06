
require "func"
require "singleton"

Factory = {};


function Factory:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	self.products = {}
	return o
end


function Factory:AddProduct(class)
	self.products[class] = class;
end

function Factory:CreateProduct( class )
	if(self.products[class] == nil) then
		logError("no product  ".. tostring(class))
	end
	return self.products[class]:New();
end




function TestFactory()
	local Man = Factory:New()
	local manManager = Man:New()

	local YellowMan = Singleton:New({name = "YellowMan"})
	local BlackMan = Singleton:New({name = "BlackMan"})
	local WhiteMan = Singleton:New({name = "WhiteMan"})

	manManager:AddProduct(YellowMan);
	manManager:AddProduct(BlackMan);
	manManager:AddProduct(WhiteMan);

	print(manManager:CreateProduct(BlackMan).name)
end


TestFactory()
