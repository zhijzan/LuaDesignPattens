
require "func"

--[[
	模板模式:
	封装不变，扩展可变
	提取公共部分便于维护
	行为由父类控制，子类实现
]]

local Model = {}

function Model:New(o)
	 o = o or {}
	 setmetatable(o,self)
	 self.__index = self
	 return o
end


function TestModel( )

	local Car = Model:New();
	function Car:Run()
		self:Start()
		self:Engine()
	end


	local BaoMa = Car:New();
	function BaoMa:Start()
		print("Baoma is Start")
	end

	function BaoMa:Engine()
		print("BaoMa Engine is Start")
	end

	local baoma = BaoMa:New()
	baoma:Run()

end


TestModel()

