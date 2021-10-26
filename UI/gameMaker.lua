

local function gM()
    local PR,PG,PB,PA = love.graphics.getColor() -- previous red,blue,green
    love.graphics.setColor(.8,.2,.2,1)
    suit.theme.color.normal = {bg={.5,.2,.2},fg={1,.5,0}}
    suit.theme.color.active = {bg={.5,.2,.2},fg={1,.5,0}}
    suit.theme.color.hovered = {bg={.5,.2,.2},fg={1,1,.1}}
    if engineSettings.hiddenSettings.properties ~= nil or false then
        print(6)
        local esShortcut = engineSettings.hiddenSettings.properties
       suit.Button("ccc",esShortcut.x,esShortcut.y,esShortcut.wid,esShortcut.hei)
    end
    love.graphics.setColor(PR,PG,PB,PA)
    
end

return gM