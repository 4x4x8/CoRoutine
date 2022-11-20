# CoRoutine
CoRoutine is lua coroutine manager, that makes work with coroutines a little easier.

# How to use
First, we create a new coroutine.

```lua
local lib = require "CoRoutine"
local coro = lib.create(function()
  for i=1, 10 do
    print(i)
    coroutine.yield()
  end
end, true)

--[[
  Explain, this code will create a new coroutine, and resume it after creating. 
  CoRoutine.create(function, resume, resume_args);
]]
```

Now we can get it status:
```lua
print(lib.status(coro))
```

And resume it again!
```lua
print(lib.resume(coro))
```

# API

#CoRoutine.create(function, resume, resume_args)
Just creates a new coroutine and resumes if true.

#CoRoutine.status(CoRoutine)
Returns status of CoRoutine object.

#CoRoutine.resume(CoRoutine, args)
Returns resume result of CoRoutine object.
