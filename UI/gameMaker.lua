
local gMVars={selectedObject=nil,propertiesWindowOpen=true}
local function gM()
    --[[if slab.BeginMainMenuBar() then
        if slab.BeginMenu("File") then
            slab.MenuItem("Item")
        slab.EndMenu()
        end
    slab.EndMainMenuBar()

    end]]

    if engineSettings.hiddenSettings.properties ~= nil or false then
        print(6)
        local esShortcut = engineSettings.hiddenSettings.properties


        slab.BeginWindow("propertiesWindow",{Title="Properties",AutoSizeWindow=false,IsOpen=gMVars.propertiesWindowOpen})

        slab.EndWindow()
    end
    
    

end

local function gMGamePreviewUpdate()
    
end

local function gMGamePreviewDraw()
    
end

return gM