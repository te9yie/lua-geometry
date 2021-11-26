local geo = require("geometry")

describe("Vec2", function()
    it("new", function()
        local v = geo.Vec2.new(1, 2)
        assert.are.same(v.x, 1)
        assert.are.same(v.y, 2)
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
        -- commutative
        assert.are.same(v0 + v1, v1 + v0)
    end)
end)