local function projectManager()
    suit.theme.color.normal = {bg={.3,.3,.3},fg={.5,.5,.5}}
    if suit.Button("Create New Project",640-175,0,350,46) then  end
    for i,v in ipairs(love.filesystem.getDirectoryItems("Projects")) do
        if suit.Button(v,640-350,i*100,700,90).hit then  print("Hit") end
    end
end


return projectManager