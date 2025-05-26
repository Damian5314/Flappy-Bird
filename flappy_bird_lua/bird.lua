-- bird.lua
-- Handles bird movement, jumping, and gravity

local bird = {}

function bird.load()
    bird.x = 50
    bird.y = 200
    bird.radius = 12
    bird.velocity = 0
    bird.gravity = 500
    bird.jump_strength = -200
end

function bird.update(dt)
    bird.velocity = bird.velocity + bird.gravity * dt
    bird.y = bird.y + bird.velocity * dt
    if love.keyboard.isDown("space") then
        bird.velocity = bird.jump_strength
    end
end

function bird.draw()
    love.graphics.setColor(1, 1, 0)
    love.graphics.circle("fill", bird.x, bird.y, bird.radius)
end

function bird.reset()
    bird.y = 200
    bird.velocity = 0
end

return bird
