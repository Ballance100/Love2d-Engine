local set = {mainSettings={},
hiddenSettings={leftPanel="properties",leftPanelWidth=150,rightPanel="contents",rightPanelWidth=150}}
--Used if User doesnt have an engine settings file




function love.load()
    binser = require("binser")
    engineState = "projectsManager"--The gameState but for the engine itself



    love.window.setMode(1280,720)--Sets the resolution

    love.filesystem.createDirectory("Projects")--Creates Project folder if user doesnt already have one

    --Binser.writeFile("engineSettingss.lua",engineSettings)

    --Binser.deserialize(engineSettings)[1]()

    LUI = require("LUI")

    UI = require("UI")--UI script contains functions which LUI execute
    UI.load()
    UI.projectManager()

    engineSettings,e = love.filesystem.read("engineSettings.lua")
    print(engineSettings,e)

    if type(e) == "string" then
        settingsFile = love.filesystem.newFile("engineSettings.lua")
        settingsFile:write(binser.serialize(set))
        settingsFile:close()
    end
end



function love.update(dt)
    settingsFile:write("")

    if engineState == "projectsManager" then
        for i,v in ipairs(UI.Elements.projectsList.Contents) do
            if v:isClicked(1) then
            end
        end
    end
end


function love.draw()
UI.draw()

end
