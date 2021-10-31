local state = "choosingProject" -- Can be choosingProject or creatingProject

input={text="Project Name"}

local function projectManager()

    if state == "choosingProject" then
        slab.PushFont(mainFont)
        slab.BeginWindow("mainContainer",{Title="",X=s.X(290),W=s.X(700),H=s.Y(110),Y=0,
        AutoSizeWindow=false,NoSavedSettings=true,NoOutline=true,BgColor={0,0,0,0}})
           slab.Button("Create Project",{W=s.X(690),H=s.Y(100),Color={1,1,1}})

        slab.EndWindow()
        
        slab.BeginWindow("window",{Title="",X=s.X(290),W=s.X(700),H=s.Y(1000),Y=200,AutoSizeWindow=false,NoSavedSettings=true })
            for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
                slab.Button(v,{W=s.X(690),H=s.Y(100),PadX=50})
            end

        slab.EndWindow()
    end
end

return projectManager