-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = Block
local class = Block._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.whileFalse_(self,block)
	(_block( function()
				return ((self):value()):_not()
	end )):whileTrue_(block);
	return self
end
