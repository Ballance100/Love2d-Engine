UI = {Elements={}}
LUI:Setup(true,true,1280,720)

local PM = require("UI.projectsManager")
local UILoad = require("UI.load")

--Sets to projects Manager engineState
UI.projectManager = PM
UI.load = UILoad



function UI.draw()
    LUI:Draw()
end


function UI.update()
    if engineState == "gameMaker" then
        if engineSettings.hiddenSettings ~= nil then UI.leftPanel:Enable() else UI.leftPanel:Disable() end
            

    end
end

return UI