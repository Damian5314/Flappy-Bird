-- main.lua
-- Entry point and game loop for Flappy Bird in Lua

local bird = require "bird"
local pipes = require "pipes"
local collision = require "collision"
local score = require "score"

function love.load()
    bird.load()
    pipes.load()
    score.load()
end

function love.update(dt)
    bird.update(dt)
    pipes.update(dt)
    if collision.check(bird, pipes) then
        score.reset()
        bird.reset()
        pipes.reset()
    end
    score.update(bird, pipes)
end

function love.draw()
    bird.draw()
    pipes.draw()
    score.draw()
end
