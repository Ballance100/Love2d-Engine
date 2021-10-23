local function lP(projectName)
	projectContents = binser.serialize(love.filesystem.read("Projects."..projectName))

end	

return lP