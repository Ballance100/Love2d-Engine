local c = 0

local function update()
    if engineState == "projectsManager" then UI.projectManager() 
    elseif engineState == "gameMaker" then UI.gameMaker()

    end
end


return update  