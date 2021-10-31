

local function gM()
    local PR,PG,PB,PA = love.graphics.getColor() -- previous red,blue,green
    love.graphics.setColor(.8,.2,.2,1)
    if engineSettings.hiddenSettings.properties ~= nil or false then
        print(6)
        local esShortcut = engineSettings.hiddenSettings.properties
    end
    love.graphics.setColor(PR,PG,PB,PA)
    
end

return gM