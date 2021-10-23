local set = {mainSettings={},
hiddenSettings={properties={x=0,y=0,wid=100,hei=320},contents={x=640-100,y=0,wid=100,hei=320}}}
--Used if User doesnt have an engine settings file



function love.load()
    binser = require("binser")
    suit = require("suit")
    UI = require("UI")--UI script contains functions which LUI execute
    flux=require("Flux")
    s = require("eZscale")

    s.setup(1280,720,"floor")

    engineState = "projectsManager"--The gameState but for the engine itself. list of possible states:projectsManager,gameMaker


    projectContents = {} --[[when a project is loaded this table will become the projects contents.
    Everytime a change is made it will change projectSettings NOT the save file. When the project is saved it will serialize
    projectContents using binser and then copy that to the save file ]]


    love.keyboard.setKeyRepeat (true)

    love.window.setMode(1280,720)--Sets the resolution

    love.filesystem.createDirectory("Projects")--Creates Project folder if user doesnt already have one

    --Binser.writeFile("engineSettingss.lua",engineSettings)

    --Binser.deserialize(engineSettings)[1]()

    UI.load()

    if love.filesystem.getInfo("engineSettings.lua") ~= nil then
        engineSettings = binser.deserialize(love.filesystem.read("data","engineSettings.lua"):getString())[1]
        --settingsFile is the save file itself. engineSettings is the file converted to a table. It is used for effecincy
        print("hs",engineSettings.hiddenSettings.properties.x)
    else

        settingsFile = love.filesystem.newFile("engineSettings.lua")
        settingsFile:open("w")
        settingsFile:write(binser.serialize(set))
        settingsFile:close()
        engineSettings = set
    end
end



function love.update(dt)
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
    if key == "f11" then if love.window.getFullscreen() then love.window.setFullscreen(false) else love.window.setFullscreen(true) end
    mainFont = love.graphics.newFont("UI/JetBrains Mono.ttf",s.getX(20)) mainFont:setFilter("linear","nearest") 
    love.graphics.setFont(mainFont) end 
end