-- Compiled with roblox-ts v3.0.0
-- eslint-disable roblox-ts/lua-truthiness 
local MemoryMachine
do
	MemoryMachine = setmetatable({}, {
		__tostring = function()
			return "MemoryMachine"
		end,
	})
	MemoryMachine.__index = MemoryMachine
	function MemoryMachine.new(...)
		local self = setmetatable({}, MemoryMachine)
		return self:constructor(...) or self
	end
	function MemoryMachine:constructor()
		self.memories = {}
	end
	function MemoryMachine:remember(key, value, category, ttl)
		local now = os.time()
		local memory = {
			key = key,
			value = value,
			category = category,
			createdAt = now,
			expiresAt = if ttl ~= 0 and ttl == ttl and ttl then now + ttl else nil,
		}
		local _memories = self.memories
		local _key = key
		_memories[_key] = memory
		return memory
	end
	function MemoryMachine:recall(key)
		local _memories = self.memories
		local _key = key
		local memory = _memories[_key]
		if not memory then
			return nil
		end
		local _condition = memory.expiresAt
		if _condition ~= 0 and _condition == _condition and _condition then
			_condition = memory.expiresAt < os.time()
		end
		if _condition ~= 0 and _condition == _condition and _condition then
			local _memories_1 = self.memories
			local _key_1 = key
			_memories_1[_key_1] = nil
			return nil
		end
		return memory.value
	end
	function MemoryMachine:forget(key)
		local _memories = self.memories
		local _key = key
		_memories[_key] = nil
	end
	function MemoryMachine:exists(key)
		return self:recall(key) ~= nil
	end
	function MemoryMachine:clear()
		table.clear(self.memories)
	end
	function MemoryMachine:cleanUp()
		local now = os.time()
		local _exp = self.memories
		-- ▼ ReadonlyMap.forEach ▼
		local _callback = function(value, key)
			local _condition = value.expiresAt
			if _condition ~= 0 and _condition == _condition and _condition then
				_condition = value.expiresAt < now
			end
			if _condition ~= 0 and _condition == _condition and _condition then
				local _memories = self.memories
				local _key = key
				_memories[_key] = nil
			end
		end
		for _k, _v in _exp do
			_callback(_v, _k, _exp)
		end
		-- ▲ ReadonlyMap.forEach ▲
	end
end
return MemoryMachine
