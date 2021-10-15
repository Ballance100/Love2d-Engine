


Scene = "projectsManager"


function love.load()
love.window.setMode(1280,720)--Sets the resolution

love.filesystem.createDirectory("Projects")--Creates Project folder if user doesnt already have one

LUI = require("LUI")

UI = require("UI")--UI script contains functions which LUI execute
UI.load()
UI.projectManager()

end



function love.update(dt)
    if Scene == "projectsManager" then
        for i,v in ipairs(UI.Elements.projectsList.Contents) do
            if v:isClicked(1) then
                print(1)
                UI.launchProject(v.Text)
            end
        end
    end
end


function love.draw()
UI.draw()

end