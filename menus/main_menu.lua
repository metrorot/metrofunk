local main_menu = {}
main_menu.selected_menu_option = 3

local pinegfx = require("../pinegfx")
local version = require("../data/version")

function main_menu.draw()
    love.graphics.setFont(pinegfx.fonts.husky128)
    logo()

    love.graphics.setFont(pinegfx.fonts.husky32)
    love.graphics.print("By MetroRot", 1080, 980)

    love.graphics.setFont(pinegfx.fonts.crystal_radio64)
    if main_menu.selected_menu_option == 0 then
        love.graphics.print("->", 50, 305)
        menu_text_layering("Play", 128, 300)
        menu_options()
    end

    if main_menu.selected_menu_option == 1 then
        love.graphics.print("->", 50, 405)
        menu_text_layering("Settings", 128, 400)
        menu_options()
    end

    if main_menu.selected_menu_option == 2 then
        love.graphics.print("->", 50, 505)
        menu_text_layering("Credits", 128, 500)
        menu_options()
    end

    if main_menu.selected_menu_option == 3 then
        love.graphics.print("->", 50, 605)
        menu_text_layering("Exit", 128, 600)
        menu_options()
    end
end

function love.keypressed(key)
    if key == "s" then
        if main_menu.selected_menu_option == 3 then
            main_menu.selected_menu_option = 0
        else
            main_menu.selected_menu_option = main_menu.selected_menu_option + 1
        end
    elseif key == "w" then
        if main_menu.selected_menu_option == 0 then
            main_menu.selected_menu_option = 3
        else
            main_menu.selected_menu_option = main_menu.selected_menu_option - 1
        end
    end
end

function main_menu.controls()
    love.keypressed()
end

function logo()
    menu_text_layering("MetroFunk", 10, 10)
    love.graphics.setColor(pinegfx.colors.white)
    love.graphics.print("MetroFunk", 10, 10)

    love.graphics.setFont(pinegfx.fonts.crystal_radio32)
    love.graphics.print("v. " .. version, 575, 100)
end

function menu_text_layering(text, x, y)
    love.graphics.setColor(pinegfx.colors.lime)
    love.graphics.print(text, x + 10, y + 10)
    love.graphics.setColor(pinegfx.colors.magenta)
    love.graphics.print(text, x + 5, y + 5)
end

function menu_options()
    love.graphics.setColor(pinegfx.colors.white)
    love.graphics.print("Play", 128, 300)
    love.graphics.print("Settings", 128, 400)
    love.graphics.print("Credits", 128, 500)
    love.graphics.print("Exit", 128, 600)
end

return main_menu
