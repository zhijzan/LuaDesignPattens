
require "func"

--[[
	责任链模式：
	优点：请求和处理分离，请求者不用知道处理者，处理者也不用知道请求者的全貌
	缺点：1性能不行要遍历 2调试不方便

]]

local Handler = {}

function Handler:New(o)
	return class(o)
end

function Handler:SetNextHandler(handler)
	self.nextHandler = handler
end


function Handler:GetHandlerLevel() 
end

function Handler:Dell(request)
	return response;
end

function Handler:HandleMessage(request) --final
	local response = nil;
	if(self:GetHandlerLevel() == request:GetHandlerLevel()) then
		response = self:Dell(request);
	elseif( self.nextHandler ~= nil)
		response = self.nextHandler:HandleMessage(request)
	end
end