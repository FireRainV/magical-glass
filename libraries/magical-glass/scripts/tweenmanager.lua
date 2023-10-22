local TweenManager = {}

TweenManager.__TWEENS = {}

function TweenManager.tween(obj, prop, time, ease)
    local tween = {}
    tween.object = obj
    tween.properties = prop
    tween.time = time
    tween.easing = ease or "linear"

    tween.done = false
    tween.progress = 0

    for _,itween in ipairs(TweenManager.__TWEENS) do
        if itween.object == tween.object then
            Utils.removeFromTable(TweenManager.__TWEENS, itween)
        end
    end

    table.insert(TweenManager.__TWEENS, tween)
end

function TweenManager.updateTweens()
    for _,tween in ipairs(TweenManager.__TWEENS) do
        if not tween.done then
            tween.progress = tween.progress + DT

            for prop, value in pairs(tween.properties) do
                tween.object[prop] = Ease[tween.easing](math.min(tween.progress, tween.time), tween.object[prop], value - tween.object[prop], tween.time)
            end

            if tween.progress > tween.time + 1 then
                tween.done = true
                tween.progress = tween.time + 1
                Utils.removeFromTable(TweenManager.__TWEENS, tween)
            end

        end
    end
end

Utils.hook(Game, "update", function(orig, self)
    orig(self)
    TweenManager.updateTweens()
end)

return TweenManager