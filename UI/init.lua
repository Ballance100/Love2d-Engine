UI = {Elements={}}
LUI:Setup(true,true,1280,720)


function UI.load()
    UI.Elements.PMCon= LUI:newFrame(0,0,love.graphics.getWidth(),love.graphics.getHeight(),{BGColour={.2,.2,.2}})
    UI.Elements.projectsList = UI.Elements.PMCon:newScrollableFrame(325,100,650,800,{BGColour={.3,.3,.3}})
    UI.Elements.projectsList.Contents = {}

    mainFont = love.graphics.newFont("UI/JetBrains Mono.ttf",20)

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

    for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
        UI.Elements.projectsList.Contents[i] = UI.Elements.projectsList:newButton(0,i*100-100,640,100,{BGColour={.5,.5,.5},Text=v,textColour = {1,1,1},Font=mainFont})
    end
end



function UI.launchProject(Project)

end

function UI.draw()
    LUI:Draw()
end


return UI