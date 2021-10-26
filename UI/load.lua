local function load()

    --Projects Manager--
    projectsManagerUI ={}
    projectsManagerUI.Frame = loveFrames.Create("frame")
    projectsManagerUI.Frame:SetSize(s.X(1280),s.Y(720))
    projectsManagerUI.Frame:SetState("projectsManager")
    love.graphics.setFont(mainFont)
    for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
        loveFrames.Create("button",projectsManagerUI.Frame)
    end
end

return load