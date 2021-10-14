UI = {Elements={}}
LUI:Setup(true,true,1280,720)


function UI.load()
    UI.Elements.PMCon= LUI:newFrame(0,0,love.graphics.getWidth(),love.graphics.getHeight(),{BGColour={.2,.2,.2}})
    UI.Elements.projectsList = UI.Elements.PMCon:newScrollableFrame(325,100,650,800,{BGColour={.3,.3,.3}})

    for i,v in ipairs(UI.Elements) do v:Disable() end
end

--Sets to projects Manager scene
function UI.projectManager()

    for i,v in ipairs(UI.Elements) do--Hides everything else
        v:Disable()
    end

    --project manager main container/Frame
    UI.Elements.PMCon:Enable()
    UI.Elements.projectsList:Enable()

    print(love.filesystem.getDirectoryItems(love.filesystem.getSaveDirectory())[1])
    for i,v in ipairs(love.filesystem.getDirectoryItems(love.filesystem.getSaveDirectory())) do
        print(v)
    end
end



function UI.launchProject(Project)

end

function UI.draw()
    LUI:Draw()
end


return UI