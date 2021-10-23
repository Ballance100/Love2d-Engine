

local function gM()
    local PR,PG,PB,PA = love.graphics.getColor() -- previous red,blue,green
    love.graphics.setColor(.8,.2,.2,1)
    suit.theme.normal = {bg={1,1,1},fg={0,0,0}}
    suit.Label("",0,0,300,300)
    if engineSettings.hiddenSettings.properties ~= nil or false then
        print(6)
        local esShortcut = engineSettings.hiddenSettings.properties
        love.graphics.rectangle("fill",esShortcut.x,esShortcut.y,esShortcut.wid,esShortcut.hei)
        
    end
    love.graphics.setColor(PR,PG,PB,PA)
    
end

return gM