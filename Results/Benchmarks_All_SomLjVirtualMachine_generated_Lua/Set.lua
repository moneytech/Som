-- generated by SomLjVirtualMachine on Sa. Aug. 29 23:05:07 2020

local metaclass = Set
local class = Set._class
local function _block(f) local t = { _f = f }; setmetatable(t,Block._class); return t end
local _str = _primitives._newString
local _sym = _primitives._newSymbol
local _dbl = _primitives._newDouble
local _cl = _primitives._checkLoad

function class._0q(self,otherSet)
	local _nonLocal, _nlRes
	local _status, _pcallRes = pcall( function()
		(((self):size()):_0q((otherSet):size())):ifFalse_(_block( function()
			_nlRes = false; _nonLocal = true; error(_nlRes)
		end ));
		(self):do_(_block( function(item)
						return ((otherSet):contains_(item)):ifFalse_(_block( function()
				_nlRes = false; _nonLocal = true; error(_nlRes)
			end ))
		end ));
		return true;
	end )
	if _status then return _pcallRes elseif _nonLocal then return _nlRes else error(_pcallRes) end
end

function class.add_(self,anObject)
	((self):contains_(anObject)):ifFalse_(_block( function()
				return (self[1]):append_(anObject)
	end ));
	return self
end

function class.addAll_(self,aCollection)
	(aCollection):do_(_block( function(each)
				return (self):add_(each)
	end ));
	return self
end

function class.union_(self,aCollection)
	local new
	new = (Set):new();
	(new):addAll_(self);
	(new):addAll_(aCollection);
	return new;
end

function class.intersection_(self,aCollection)
	local new
	new = (Set):new();
	(self):do_(_block( function(it)
				return ((aCollection):contains_(it)):ifTrue_(_block( function()
						return (new):add_(it)
		end ))
	end ));
	return new;
end

function class._0m(self,aCollection)
	local new
	new = (Set):new();
	(self):do_(_block( function(it)
				return ((aCollection):contains_(it)):ifFalse_(_block( function()
						return (new):add_(it)
		end ))
	end ));
	return new;
end

function class.contains_(self,anObject)
	local _nonLocal, _nlRes
	local _status, _pcallRes = pcall( function()
		(self[1]):do_(_block( function(it)
						return ((it):_0qq(anObject)):ifTrue_(_block( function()
				_nlRes = true; _nonLocal = true; error(_nlRes)
			end ))
		end ));
		return false;
	end )
	if _status then return _pcallRes elseif _nonLocal then return _nlRes else error(_pcallRes) end
end

function class.remove_(self,anObject)
	local newItems
	newItems = (Vector):new();
	(_block( function()
				return (self[1]):isEmpty()
	end )):whileFalse_(_block( function()
		local it
		it = (self[1]):remove();
				return ((it):_0q(anObject)):ifFalse_(_block( function()
						return (newItems):append_(it)
		end ))
	end ));
	self[1] = newItems;
	return self
end

function class.first(self)
	return (self[1]):at_((1));
end

function class.isEmpty(self)
	return (self[1]):isEmpty();
end

function class.do_(self,block)
	(self[1]):do_(block);
	return self
end

function class.collect_(self,block)
	local coll
	coll = (Vector):new();
	(self):do_(_block( function(e)
				return (coll):append_((block):value_(e))
	end ));
	return coll;
end

function class.println(self)
	(_str("(")):print();
	(self):do_(_block( function(it)
		(_str("(")):print();
		(it):print();
				return (_str(")")):print()
	end ));
	(_str(")")):println();
	return self
end

function class.asString(self)
	local result
	result = _str("a Set(");
	(self[1]):do_(_block( function(e)
		result = ((result):_0p((e):asString())):_0p(_str(", "))
		return result
	end ));
	result = (result):_0p(_str(")"));
	return result;
end

function class.size(self)
	return (self[1]):size();
end

function class.items_(self,it)
	self[1] = it;
	return self
end

function metaclass.new(self)
	local newSet
	newSet = self._super.new(self);
	(newSet):items_((Vector):new());
	return newSet;
end

