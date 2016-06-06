
require "singleton"

local Proxy = {}

 --[[
	代理模式：
	为其他对象提供一个访问该对象的接口
 ]]
function Proxy:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return self
end


function Proxy:SetWorker(worker)
	self.worker = worker
end


function Proxy:DoFunction(name,...)
	self.worker[name](self.worker,...)
end



function TestProxy()
	local GameWorker = Singleton:New()
	function GameWorker:Login()
		print("GameWorker:Login")
	end

	local worker = GameWorker:New()

	local GameProxy = Proxy:New()
	local proxy = GameProxy:New()
	proxy:SetWorker(worker)
	proxy:DoFunction("Login")
end


TestProxy()
