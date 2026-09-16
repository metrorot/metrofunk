if pinegfx then return end
local pinegfx = {}
pinegfx.colors = {
    black   = { 0, 0, 0 },
    white   = { 1, 1, 1 },
    red     = { 1, 0, 0 },
    lime    = { 0, 1, 0 },
    blue    = { 0, 0, 1 },
    yellow  = { 1, 1, 0 },
    cyan    = { 0, 1, 1 },
    magenta = { 1, 0, 1 },
    silver  = { 0.75, 0.75, 0.75 },
    grey    = { 0.5, 0.5, 0.5 },
    maroon  = { 0.5, 0, 0 },
    olive   = { 0.5, 0.5, 0 },
    green   = { 0, 0.5, 0 },
    purple  = { 0.5, 0, 0.5 },
    teal    = { 0, 0.5, 0.5 },
    navy    = { 0, 0, 128 }
}
pinegfx.fonts = {
    isometric           = love.graphics.newFont("assets/fonts/3d_isometric.ttf", 32),
    crystal_radio32     = love.graphics.newFont("assets/fonts/crystal_radio.otf", 32),
    crystal_radio64     = love.graphics.newFont("assets/fonts/crystal_radio.otf", 64),
    husky32             = love.graphics.newFont("assets/fonts/husky_stash.otf", 32),
    husky128            = love.graphics.newFont("assets/fonts/husky_stash.otf", 128),
    husky64             = love.graphics.newFont("assets/fonts/husky_stash.otf", 64)
}

function pinegfx.draw_placeholder(x, y, w, h)
    love.graphics.setColor(pinegfx.colors.grey)
    love.graphics.rectangle("fill", x, y, w, h)
    love.graphics.setColor(pinegfx.colors.white)
end

return pinegfx
