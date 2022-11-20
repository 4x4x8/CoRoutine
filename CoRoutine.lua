local CoRoutine = {}
local t_unpack = table.unpack

function CoRoutine.create(f, resume, resume_args)
    local self = setmetatable({}, {__index = CoRoutine})
    self.coroutine = coroutine.create(f)
    if resume then CoRoutine.resume(self, resume_args) end
    return self
end

function CoRoutine.status(routine) return coroutine.status(routine.coroutine) end

function CoRoutine.resume(routine, arg)
    if arg then
        return coroutine.resume(routine.coroutine, t_unpack(arg))
    end
    return coroutine.resume(routine.coroutine)
end

return CoRoutine