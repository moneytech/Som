-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = Storage
local class = Storage._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class.benchmark(self)
	(Random):initialize();
	self[1] = (0);
	(self):buildTreeDepth_((7));
	return self[1];
end

function class.verifyResult_(self,result)
	return (self):assert_equals_((5461),result);
end

function class.buildTreeDepth_(self,depth)
	self[1] = (self[1]):_0p((1));
	return ((depth):_0q((1))):ifTrue_ifFalse_(_block( function()
				return (Array):new_((((Random):next()):_0r((10))):_0p((1)))
	end ),_block( function()
				return (Array):new_withAll_((4),_block( function()
						return (self):buildTreeDepth_((depth):_0m((1)))
		end ))
	end ));
end
