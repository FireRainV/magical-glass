function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:postInit()
    Game.stage.timer:after(1, function()
        Game:setFlag("undertale_currency", true)
        Game:setFlag("hide_cell", true)
        Game:setFlag("savename_lw_menus", true)
    end)
end