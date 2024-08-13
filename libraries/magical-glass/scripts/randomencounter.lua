---@class RandomEncounter : Object
---@overload fun(...) : RandomEncounter
local RandomEncounter = Class()

function RandomEncounter:init()
    -- The amount of enemies that can be encountered
    self.population = nil
    
    -- The amount of steps it takes to start a random encounter
    self.initial_steps = 30
    -- The amount of steps it takes to start a nobody encounter
    self.nobody_steps = 20
    
    -- Whether the steps amount will increase when not that many monsters left
    self.use_population_factor = false
    
    -- The bubble that should appear when a random encounter is triggered
    -- If this is nil, the battle starts instantly
    self.bubble = "effects/alert"
    
    -- "But Nobody Came" encounter used if you meet the nobodyCame() returns true
    self.nobody_encounter = "_nobody"
    
    -- Table with the encounters that can be triggered by this random encounter
    self.encounters = {}
    
    -- Whether the encounters are a light or dark encounters
    self.light = true
end

function RandomEncounter:resetSteps()
    if not self:nobodyCame() and self.use_population_factor and self.population and self.population >= 0 then
        local pop_factor = 15 / (15 - math.max(0, self:getFlag("violent", 0) - self.population + 5)) - 1
        local steps = math.ceil(self.initial_steps + 100 * pop_factor)
        MagicalGlassLib.steps_until_encounter = steps
    elseif not self:nobodyCame() then
        MagicalGlassLib.steps_until_encounter = self.initial_steps
    else
        MagicalGlassLib.steps_until_encounter = self.nobody_steps
    end
end

function RandomEncounter:active()
    return true
end

function RandomEncounter:getNextEncounter()
    if not self:nobodyCame() then
        return Utils.pick(self.encounters)
    else
        return self.nobody_encounter
    end
end

function RandomEncounter:nobodyCame()
    if self.population and self:getFlag("violent", 0) >= self.population then
        return true
    end
    return false
end

function RandomEncounter:start()
    if not Game.world:hasCutscene() and self:active() and not MagicalGlassLib.initiating_random_encounter then
        if self.bubble then
            Game.lock_movement = true
            MagicalGlassLib.initiating_random_encounter = true
            Game.world.player:alert((15 + Utils.random(5)) / 30, {layer = WORLD_LAYERS["above_events"], sprite = self.bubble, callback = function() Game:encounter(self:getNextEncounter(), true, nil, nil, self.light);MagicalGlassLib.random_encounter = self.id;Game.lock_movement = false;MagicalGlassLib.initiating_random_encounter = nil end})
        else
            Game:encounter(self:getNextEncounter(), true, nil, nil, self.light)
            MagicalGlassLib.random_encounter = self.id
        end
    end
end

function RandomEncounter:setFlag(flag, value)
    Game:setFlag("randomencounter#"..self.id..":"..flag, value)
end

function RandomEncounter:getFlag(flag, default)
    return Game:getFlag("randomencounter#"..self.id..":"..flag, default)
end

function RandomEncounter:addFlag(flag, amount)
    return Game:addFlag("randomencounter#"..self.id..":"..flag, amount)
end

return RandomEncounter