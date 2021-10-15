


function projectManager()

    for i,v in ipairs(UI.Elements) do--Hides everything else
        v:Disable()
    end

    --project manager main container/Frame
    UI.Elements.PMCon:Enable()
    UI.Elements.projectsList:Enable()

    for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
        UI.Elements.projectsList.Contents[i] = UI.Elements.projectsList:newButton(0,i*100-100,640,100,{BGColour={.5,.5,.5},Text=v,textColour = {1,1,1},Font=mainFont})
        UI.Elements.projectsList.Contents[i] = nil
    end
end


return projectManager