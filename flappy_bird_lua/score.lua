-- score.lua
-- Handles scoring and UI

local score = {}

function score.load()
    score.value = 0
end

function score.update(bird, pipes)
    for _, pipe in ipairs(pipes.list) do
        if not pipe.passed and bird.x > pipe.x + pipe.width then
            score.value = score.value + 1
            pipe.passed = true
        end
    end
end

function score.draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Score: " .. score.value, 10, 10, 0, 2, 2)
end

function score.reset()
    score.value = 0
end

return score
