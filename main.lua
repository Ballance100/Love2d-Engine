
print(3)




function love.load()
love.window.setMode(1280,720)--Sets the resolution

love.filesystem.createDirectory("Projects")--Creates Project folder if user doesnt already have one

LUI = require("LUI")

UI = require("UI")--UI script contains functions which LUI execute
UI.load()
UI.projectManager()

end



function love.update()

end


function love.draw()
UI.draw()

end