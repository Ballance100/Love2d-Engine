local state = "choosingProject" -- Can be choosingProject or creatingProject

input={text="Project Name"}

local function projectManager()
    suit.theme.color.normal = {bg={.3,.3,.3},fg={.5,.5,.5}}
    print(suit.theme.color.hovered.bg[1])
    suit.theme.color.active = {bg={.3,.7,.7},fg={0,0,0}}

    if state == "choosingProject" then
        if suit.Button("Create New Project",640-175,0,350,46).hit then state = "creatingProject" end
        for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
            if suit.Button(v,640-350,i*100,700,90).hit then  print("Hit") end
        end
    elseif state == "creatingProject" then
        suit.Label("Create New Project",640-175,50,350,40)
        suit.Input(input,640-150,100,300,40)
        suit.Button("Submit",640-150,155,140,30)
        suit.Button("Close",640,155,140,30)
    end
end


return projectManager