Stage = Object:extend() -- We need a canvas so the pixel art scales properly

function Stage:new()
    self.area = Area(self)
    self.main_canvas = love.graphics.newCanvas(gw, gh) -- Initialize canvas
end

function Stage:update(dt)
    self.area:update(dt)
end

function Stage:draw()
    -- Set canvas to drawable
    love.graphics.setCanvas(self.main_canvas)
    love.graphics.clear()
        love.graphics.circle('line', gw/2, gh/2, 50)
        self.area:draw()
    love.graphics.setCanvas()

    -- Draw canvas
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setBlendMode('alpha', 'premultiplied') -- Prevent improper blending
    love.graphics.draw(self.main_canvas, 0, 0, 0, sx, sy)
    love.graphics.setBlendMode('alpha')
end