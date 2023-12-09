local item, super = Class(LightEquipItem, "ut_weapons/empty_gun")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Empty Gun"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Whether this item is for the light world
    self.light = true

    -- Default shop price (sell price is halved)
    self.price = 350
    -- Default shop sell price
    self.sell_price = 100
    -- Whether the item can be sold
    self.can_sell = true

    -- Light world check text
    self.check = {
        "Weapon AT 12\n* An antique revolver.[wait:10]\n* It has no ammo.",
        "* Must be used precisely, or\ndamage will be low."
    }

    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil

    self.bonuses = {
        attack = 12
    }

    self.bolt_count = 4
    self.bolt_speed = 15
    self.bolt_speed_variance = nil
    self.bolt_start = 120
    self.bolt_miss_threshold = 3
    self.multibolt_variance = {{180, 210, 240}, {300, 330, 360}, {400, 430, 460}}

    self.attack_sound = "gunshot"
end

function item:onLightAttack(battler, enemy, damage, stretch, crit)
    local src = Assets.stopAndPlaySound(self:getLightAttackSound() or "laz_c")
    src:setPitch(self:getLightAttackPitch() or 1)

    local sprite = Sprite("effects/attack/gunshot_stab")
    sprite:setScale(2, 2)
    sprite:setOrigin(0.5, 0.5)
    sprite:setPosition(enemy:getRelativePos((enemy.width / 2), (enemy.height / 2)))
    sprite.layer = BATTLE_LAYERS["above_ui"] + 5
    sprite.color = battler.chara:getLightMultiboltAttackColor()
    enemy.parent:addChild(sprite)
    sprite:play(2/30, true)

    if crit then
        sprite:setColor(1, 1, 130/255)
    end

    Game.battle.timer:after(3/30, function()
        sprite:remove()

        local stars = {}
        for i = 0, 7 do
            local star = Sprite("effects/attack/gunshot_stab")
            star:setOrigin(0.5, 0.5)
            star.siner = 45 * i
            star.star_sine_amt = 0
            star.star_speed = 16
            star.star_grav = -2
            star.star_ang = 20
            star.star_size = 0.5
            star.rotation = math.rad(20 * i)
            star:setPosition(enemy:getRelativePos((enemy.width / 2), (enemy.height / 2)))
            star.layer = BATTLE_LAYERS["above_ui"] + 5
            star.init_x = star.x
            star.init_y = star.y
            star.color = battler.chara.light_color
            if crit then
                star:setColor(1, 1, 130/255)
                Assets.stopAndPlaySound("saber3", 0.8)
            end
            table.insert(stars, star)
            enemy.parent:addChild(star)
            star:play(4/30, true)
        end

        Game.battle.timer:during(1, function()
            for _,star in ipairs(stars) do
                star.siner = star.siner + 15 * DTMULT

                star.star_sine_amt = star.star_sine_amt + star.star_speed * DTMULT
                star.star_speed = star.star_speed + star.star_grav * DTMULT

                local a = math.rad(star.siner)
                star.rotation = star.rotation + math.rad(star.star_ang)
                star.x = star.init_x + math.sin(a) * star.star_sine_amt
                star.y = star.init_y + math.cos(a) * star.star_sine_amt
                if star.star_speed < 0 then
                    star.alpha = star.alpha - 0.07 * DTMULT
                end

                star.star_size = 1 + (star.star_speed / 20)
                if star.star_size < 0.2 then
                    star.star_size = 0
                end

                star:setScale(star.star_size)

                if star.star_sine_amt <= 0.5 then
                    star:remove()
                end
            end
        end)

        local ring_opacity = 1
        Game.battle.timer:every(3/30, function()
            local ring = Sprite("effects/attack/gunshot_remnant")
            local ring_form = false
            local ring_size = 1
            local ring_shots = 0
            ring:setScale(1, 1)
            ring:setOrigin(0.5, 0.5)
            ring:setPosition(enemy:getRelativePos((enemy.width / 2), (enemy.height / 2)))
            ring.layer = BATTLE_LAYERS["above_ui"] + 5
            ring.color = battler.chara.light_color
            enemy.parent:addChild(ring)
    
            if crit then
                ring:setColor(1, 1, 130/255)
            end
    
            Game.battle.timer:during(1, function()
                ring.alpha = ring_opacity
    
                if ring_form == false then
                    ring_size = ring_size + 0.5 * DTMULT
                end
        
                if ring_size > 3.5 then
                    ring_form = true
                end
        
                if ring_form == true then
                    ring_opacity = ring_opacity - 0.2 * DTMULT
                    ring_size = ring_size - 0.3 * DTMULT
                    if ring.alpha < 0.1 then
                        ring:remove()
                    end
                end
    
                ring:setScale(ring_size)
            end)
        end, 4)
    end)

    Game.battle.timer:after(22/30, function()
        local sound = enemy:getDamageSound() or "damage"
        if sound and type(sound) == "string" and (damage > 0 or enemy.always_play_damage_sound) then
            Assets.stopAndPlaySound(sound)
        end
        enemy:hurt(damage, battler)

        battler.chara:onAttackHit(enemy, damage)

        Game.battle:endAttack()
    end)
end

return item