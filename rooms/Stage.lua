Stage = Object:extend()

function Stage:new()
    self.area = Area()
    self.timer = Timer()
    self.timer:after(0, function(addcircle)
        self.area:addGameObject('Circle', random(0, 800), random(0, 600))
        self.timer:after(2, addcircle)
    end)
end

function Stage:update(dt)
    self.area:update(dt)
    self.timer:update(dt)
end

function Stage:draw()
    self.area:draw()
end