local set = {mainSettings={},
hiddenSettings={properties="leftPanel",contents="rightPanel",leftPanelWidth=150,rightPanelWidth=150}}
--Used if User doesnt have an engine settings file




function love.load()
    binser = require("binser")
    suit = require("suit")
    UI = require("UI")--UI script contains functions which LUI execute
    Flux=require("Flux")
    engineState = "projectsManager"--The gameState but for the engine itself. list of possible states:projectsManager,gameMaker

    love.keyboard.setKeyRepeat (true)

    love.window.setMode(1280,720)--Sets the resolution

    love.filesystem.createDirectory("Projects")--Creates Project folder if user doesnt already have one

    --Binser.writeFile("engineSettingss.lua",engineSettings)

    --Binser.deserialize(engineSettings)[1]()
    print("i",love.filesystem.getIdentity())
    UI.load()

    if love.filesystem.getInfo("engineSettings.lua") ~= nil then
        settingsFile = love.filesystem.newFile("engineSettings.lua")
        settingsFile:open("r")
        con = settingsFile:read()
        engineSettings = binser.deserialize(con)
        --settingsFile is the save file itself. engineSettings is the file converted to a table. It is used for effecincy
    else

        print(1)
        settingsFile = love.filesystem.newFile("engineSettings.lua")
        settingsFile:open("w")
        settingsFile:write(binser.serialize(set))
        settingsFile:close()
        engineSettings = set
    end
end



function love.update(dt)
    settingsFile:write("")
    UI.update()

end


function love.draw()
UI.draw()

end

function love.textinput(t)
    suit.textinput(t)
end

function love.keypressed(_,key)
    suit.keypressed(key)
end