-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = True
local class = True._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.asString(self)
	return _str("true");
end

function class.ifTrue_(self,block)
	return (block):value();
end

function class.ifFalse_(self,block)
	return nil;
end

function class._not(self)
	return false;
end

function class.or_(self,block)
	return true;
end

function class.and_(self,block)
	return (block):value();
end
