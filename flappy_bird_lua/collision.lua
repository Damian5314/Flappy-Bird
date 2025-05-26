-- collision.lua
-- Checks for collision between bird and pipes

local collision = {}

function collision.check(bird, pipes)
    for _, pipe in ipairs(pipes.list) do
        if bird.x + bird.radius > pipe.x and bird.x - bird.radius < pipe.x + pipe.width then
            if bird.y - bird.radius < pipe.gap_y - pipe.gap_height/2 or bird.y + bird.radius > pipe.gap_y + pipe.gap_height/2 then
                return true
            end
        end
    end
    if bird.y - bird.radius < 0 or bird.y + bird.radius > 480 then
        return true
    end
    return false
end

return collision
