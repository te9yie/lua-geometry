local geo = require("geometry")

describe("Vec2", function()
    it("new", function()
        local v0 = geo.Vec2.new()
        assert.are.same(v0.x, 0)
        assert.are.same(v0.y, 0)
        assert.are.same(v0, geo.Vec2.ZERO)

        local vx = geo.Vec2.new(1, 0)
        assert.are.same(vx.x, 1)
        assert.are.same(vx.y, 0)
        assert.are.same(vx, geo.Vec2.X_AXIS)

        local vy = geo.Vec2.new(0, 1)
        assert.are.same(vy.x, 0)
        assert.are.same(vy.y, 1)
        assert.are.same(vy, geo.Vec2.Y_AXIS)
    end)

    it("add", function()
        local v0 = geo.Vec2.new(1, 2)
        local v1 = geo.Vec2.new(3, 4)
        local v = v0 + v1

        -- not changed.
        assert.are.same(v0.x, 1)
        assert.are.same(v0.y, 2)
        -- not changed.
        assert.are.same(v1.x, 3)
        assert.are.same(v1.y, 4)
        -- added
        assert.are.same(v.x, 4)
        assert.are.same(v.y, 6)

        assert.are.same(v0 + v1, v1 + v0)
    end)

    it("sub", function()
        local v0 = geo.Vec2.new(1, 2)
        local v1 = geo.Vec2.new(3, 4)
        local v = v0 - v1

        -- not changed.
        assert.are.same(v0.x, 1)
        assert.are.same(v0.y, 2)
        -- not changed.
        assert.are.same(v1.x, 3)
        assert.are.same(v1.y, 4)
        -- substracted
        assert.are.same(v.x, -2)
        assert.are.same(v.y, -2)

        assert.are.same(v0 - geo.Vec2.ZERO, v0)
        assert.are.same(geo.Vec2.ZERO - v0, -v0)
        assert.are.same(v0 - v1, (-v1) - (-v0))
        assert.are.same((v0 - v1) - v, v0 - (v1 - (-v)))
    end)
end)