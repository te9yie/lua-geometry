local Vec2 = {}

function Vec2.new(x, y)
    local self = {
        x = x or 0,
        y = y or 0,
    }
    setmetatable(self, {
        __index = Vec2,
        __add = Vec2.add,
        __sub = Vec2.sub,
        __unm = Vec2.negative,
    })
    return self
end

function Vec2.add(lhs, rhs)
    return Vec2.new(lhs.x + rhs.x, lhs.y + rhs.y)
end

function Vec2.sub(lhs, rhs)
    return Vec2.new(lhs.x - rhs.x, lhs.y - rhs.y)
end

function Vec2.negative(v)
    return Vec2.new(-v.x, -v.y)
end

Vec2.ZERO = Vec2.new();
Vec2.X_AXIS = Vec2.new(1, 0);
Vec2.Y_AXIS = Vec2.new(0, 1);

return {
    Vec2 = Vec2
}