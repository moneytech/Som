-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = Sort
local class = Sort._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.benchmark(self)
	local array
	array = (self):randomArray_((self):dataSize());
	return (self):sort_(array);
end

function class.dataSize(self)
	(self):subclassResponsibility();
	return self
end

function class.sort_(self,array)
	(self):subclassResponsibility();
	return self
end

function class.verifyResult_(self,array)
	((((array):at_((1))):_0lg(self[1])):_0bb(((array):at_((array):length())):_0lg(self[2]))):ifTrue_(_block( function()
				return (self):error_((((((((_str("Array is not sorted. smallest: ")):_0p((self[1]):asString())):_0p(_str(" largest: "))):_0p((self[2]):asString())):_0p(_str(" [1]: "))):_0p(((array):at_((1))):asString())):_0p(_str(" [l]: "))):_0p(((array):at_((array):length())):asString()))
	end ));
	((3)):to_do_((array):length(),_block( function(i)
				return (((array):at_((i):_0m((1)))):_0g((array):at_(i))):ifTrue_(_block( function()
						return (self):error_((((((((_str("Array is not sorted. [")):_0p((i):asString())):_0p(_str(" - 1]: "))):_0p(((array):at_((i):_0m((1)))):asString())):_0p(_str(" ["))):_0p((i):asString())):_0p(_str("]: "))):_0p(((array):at_(i)):asString()))
		end ))
	end ));
	return true;
end

function class.randomArray_(self,size)
	local array
	(Random):initialize();
	array = (Array):new_withAll_(size,_block( function()
				return (Random):next()
	end ));
	self[1] = ( function()self[2] = (array):at_((1)); return self[2] end )();
	(array):do_(_block( function(elm)
		((elm):_0g(self[2])):ifTrue_(_block( function()
			self[2] = elm
			return self[2]
		end ));
				return ((elm):_0l(self[1])):ifTrue_(_block( function()
			self[1] = elm
			return self[1]
		end ))
	end ));
	return array;
end
