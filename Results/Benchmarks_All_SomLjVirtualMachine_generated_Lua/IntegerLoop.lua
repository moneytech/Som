-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = IntegerLoop
local class = IntegerLoop._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.benchmark(self)
	local bounds
	local a
	bounds = (20000);
	((bounds):negated()):to_by_do_(bounds,(1),_block( function(value)
		a = (value):_0m(value)
		return a
	end ));
	return a;
end

function class.verifyResult_(self,result)
	return ((0)):_0q(result);
end

