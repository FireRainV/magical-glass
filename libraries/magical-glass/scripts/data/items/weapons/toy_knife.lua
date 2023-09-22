local item, super = Class(LightEquipItem, "weapons/toy_knife")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Toy Knife"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Whether this item is for the light world
    self.light = true

    -- Light world check text
    self.check = "Weapon AT 3\n* Made of plastic.\n* A rarity nowadays."

    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {
        attack = 3
    }

    self.bolt_speed = self.bolt_speed * 1.25
    self.bolt_direction = "random"

end

function item:getLightBattleText()
    return "* You equipped Toy Knife."
end

return item