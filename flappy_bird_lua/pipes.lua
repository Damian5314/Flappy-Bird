-- pipes.lua
-- Handles pipe generation and movement

local pipes = {}

function pipes.load()
    pipes.list = {}
    pipes.spawn_timer = 0
    pipes.spawn_interval = 2
end

function pipes.update(dt)
    pipes.spawn_timer = pipes.spawn_timer + dt
    if pipes.spawn_timer > pipes.spawn_interval then
        pipes.spawn_timer = 0
        local gap_y = math.random(80, 320)
        table.insert(pipes.list, {x = 400, gap_y = gap_y, width = 40, gap_height = 100})
    end
    for i = #pipes.list, 1, -1 do
        local pipe = pipes.list[i]
        pipe.x = pipe.x - 120 * dt
        if pipe.x + pipe.width < 0 then
            table.remove(pipes.list, i)
        end
    end
end

function pipes.draw()
    love.graphics.setColor(0, 1, 0)
    for _, pipe in ipairs(pipes.list) do
        love.graphics.rectangle("fill", pipe.x, 0, pipe.width, pipe.gap_y - pipe.gap_height/2)
        love.graphics.rectangle("fill", pipe.x, pipe.gap_y + pipe.gap_height/2, pipe.width, 480 - (pipe.gap_y + pipe.gap_height/2))
    end
end

function pipes.reset()
    pipes.list = {}
    pipes.spawn_timer = 0
end

return pipes
