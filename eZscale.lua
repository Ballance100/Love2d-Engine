local scale = {}

function scale.setup(gameWidth,gameHeight,rounding)--rounding:can be floor,ceil or false/nil
    scale.gameWidth,scale.gameHeight,scale.rounding = gameWidth,gameHeight,rounding
end

function scale.getX(x)
    local curScale = scale.gameWidth/love.graphics.getWidth()
    if scale.rounding == "floor" then return math.floor(x/curScale) elseif scale.rounding == "ceil" then return math.ceil(x/curScale) end
end

function scale.getY(y)
    local curScale = scale.gameHeight/love.graphics.getHeight()
    if scale.rounding == "floor" then return math.floor(y/curScale) elseif scale.rounding == "ceil" then return math.ceil(y/curScale) end
end

function scale.getScale()
    return {scale.gameWidth/love.graphics.getWidth(),scale.gameHeight/love.graphics.getHeight}
end

scale.X = scale.getX scale.Y = scale.getY

return scale