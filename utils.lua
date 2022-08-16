function UUID() -- seed generation
    local fn = function(x)
        local r = love.math.random(16) - 1
        r = (x == "x") and (r + 1) or (r % 4) + 9
        return ("0123456789abcdef"):sub(r, r)
    end
    return (("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", fn))
end

function random(min, max)
    if not max then -- if max is nil then it means only one value was passed in
        return love.math.random()*min
    else
        if min > max then min, max = max, min end
        return love.math.random()*(max - min) + min
    end
end