-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = Random
local class = Random._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.initialize(self)
	self[1] = (74755);
	return self
end

function class.next(self)
	self[1] = (((self[1]):_0s((1309))):_0p((13849))):_0a((65535));
	return self[1];
end

function class.run(self)
	local _nonLocal, _nlRes
	local _status, _pcallRes = pcall( function()
		local fail
		(_str("Testing random number generator ... ")):print();
		fail = _block( function()
			(_str("FAILED:")):println();
			_nlRes = nil; _nonLocal = true; error(_nlRes)
		end );
		(((self):next()):_0lg((22896))):ifTrue_(fail);
		(((self):next()):_0lg((34761))):ifTrue_(fail);
		(((self):next()):_0lg((34014))):ifTrue_(fail);
		(((self):next()):_0lg((39231))):ifTrue_(fail);
		(((self):next()):_0lg((52540))):ifTrue_(fail);
		(((self):next()):_0lg((41445))):ifTrue_(fail);
		(((self):next()):_0lg((1546))):ifTrue_(fail);
		(((self):next()):_0lg((5947))):ifTrue_(fail);
		(((self):next()):_0lg((65224))):ifTrue_(fail);
		(_str("PASSED")):println();
		return self
	end )
	if _status then return _pcallRes elseif _nonLocal then return _nlRes else error(_pcallRes) end
end

function metaclass.new(self)
	return (self._super.new(self)):initialize();
end

function metaclass.next(self)
	return ((self):random()):next();
end

function metaclass.initialize(self)
	return ( function()self[1] = (Random):new(); return self[1] end )();
end

function metaclass.random(self)
	return self[1];
end

