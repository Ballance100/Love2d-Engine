local state = "choosingProject" -- Can be choosingProject or creatingProject

input={text="Project Name"}

local function projectManager()
    

    suit.theme.color.normal = {bg={.3,.3,.3},fg={.5,.5,.5}}
    suit.theme.color.active = {bg={.3,.7,.7},fg={0,0,0}}

    if state == "choosingProject" then
        print(s.Y(46))
        if suit.Button("Create New Project",s.X(640-175),s.Y(0),s.X(350),s.Y(46)).hit then state = "creatingProject" end
        for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do

            if suit.Button(v,s.X(640-350),s.Y(i*100),s.X(700),s.Y(90)).hit then -- Project select button
                projectContents = binser.deserialize(love.filesystem.read("data","Projects/"..v.."/contents.lua"):getString())
                engineState = "gameMaker"
                
            end
    
        end
    elseif state == "creatingProject" then
        suit.Label("Create New Project",s.X(640-175),s.Y(50),s.X(350),s.Y(40))
        suit.Input(input,s.X(640-150),s.Y(100),s.X(300),s.Y(40))
        if suit.Button("Create",s.X(640-150),s.Y(155),s.X(140),s.Y(30)).hit then 
        love.filesystem.createDirectory("Projects/"..input.text)
        local contentsFile = love.filesystem.newFile("Projects/"..input.text.."/contents.lua")
        contentsFile:open("w")
        contentsFile:write(binser.serialize({workspace={},physics={},assets={},libraries={}}))

        contentsFile:close()

        love.filesystem.createDirectory("Projects/"..input.text.."/Assets") 
        end
        if suit.Button("Close",s.X(650),s.Y(155),s.X(140),s.Y(30)).hit then state = "choosingProject" end
    end
end

return projectManager