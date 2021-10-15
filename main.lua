local set = {mainSettings={},hiddenSettings={}}
--Used if User doesnt have an engine settings file

local engineState


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
    local f = love.filesystem.newFile("engineSettings.lua")
    f:write(binser.serialize(set))
end
end



function love.update(dt)
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