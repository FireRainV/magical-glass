local Dummy, super = Class(LightEncounter)

function Dummy:init()
    super:init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "* Froggit hopped close!"

    -- Battle music ("battleut" is undertale)
    self.music = "battle"

    -- Add the dummy enemy to the encounter
    self:addEnemy("froggit")
end

return Dummy