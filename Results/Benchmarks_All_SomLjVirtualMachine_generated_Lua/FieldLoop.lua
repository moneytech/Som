-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = FieldLoop
local class = FieldLoop._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.benchmark(self)
	local iter
	self[1] = (0);
	iter = (20000);
	(_block( function()
				return (iter):_0g((0))
	end )):whileTrue_(_block( function()
		iter = (iter):_0m((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1));
		self[1] = (self[1]):_0p((1))
		return self[1]
	end ));
	return self[1];
end

function class.verifyResult_(self,result)
	return ((600000)):_0q(result);
end

