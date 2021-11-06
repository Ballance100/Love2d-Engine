local state = "choosingProject" -- Can be choosingProject or creatingProject

input={text="Project Name"}

local function projectManager()

    if state == "choosingProject" then
        slab.PushFont(mainFont)
        slab.BeginWindow("createProjectButtonContainer",{Title="",X=s.X(290),W=s.X(700),H=s.Y(110),Y=0,
        AutoSizeWindow=false,NoSavedSettings=true,NoOutline=true,BgColor={0,0,0,0}})


          if  slab.Button("Create Project",{W=s.X(690),H=s.Y(100),Color={1,1,1}}) then -- If clicked
            state = "creatingProject"
          end

        slab.EndWindow()
        
        slab.BeginWindow("window",{Title="",X=s.X(290),W=s.X(700),H=s.Y(1000),Y=200,AutoSizeWindow=false,NoSavedSettings=true })
            for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
                if slab.Button(v,{W=s.X(690),H=s.Y(100),PadX=50}) then --If clicked
                  engineState = "gameMaker"
                end
            end

        slab.EndWindow()


        elseif state == "creatingProject" then
        suit.Input(input,640-150,100,300,40)
        suit.Button("Create",640-150,155,140,30)
        suit.Button("Close",640,155,140,30)
        suit.Label("Create a New Project",s.X(640-175),s.Y(50),s.X(350),s.Y(40))
        suit.Input(input,s.X(640-150),s.Y(100),s.X(300),s.Y(40))
        if suit.Button("Create",s.X(640-150),s.Y(155),s.X(140),s.Y(30)).hit then 

          love.filesystem.createDirectory("Projects/"..input.text)
          love.filesystem.createDirectory("Projects/"..input.text.."/libraries")
          local contentsFile = love.filesystem.newFile("Projects/"..input.text.."/contents.lua")
          contentsFile:open("w")
          contentsFile:write(binser.serialize({
            workspace={physics={type="folder",contents={}}},
            assets={type="folder",contents={}},}))

          contentsFile:close()

          love.filesystem.createDirectory("Projects/"..input.text.."/Assets") 
        end
        if suit.Button("Close",s.X(650),s.Y(155),s.X(140),s.Y(30)).hit then state = "choosingProject" end
    end
end

return projectManager