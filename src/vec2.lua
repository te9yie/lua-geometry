local Vec2 = {}

function Vec2.new(x, y)
    local self = {
        x = x,
        y = y,
    }
    setmetatable(self, {
        __index = Vec2,
        __add = Vec2.add,
    })
    return self
end

function Vec2.add(lhs, rhs)
    return Vec2.new(lhs.x + rhs.x, lhs.y + rhs.y)
end

return {
    Vec2 = Vec2
}