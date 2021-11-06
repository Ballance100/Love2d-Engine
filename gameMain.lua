function love.load()
	camera = require("hump.camera")
	binser = require("binser")
	gameContents = binser.deserialize(love.filesystem.read("gameContents.lua"))
end


function love.update(dt)

	local function runObjects(object)-- Acts on the objects that findObjects finds

	end

	local function findObjects(Tab)
		for i,object in ipairs(Tab) do
			runObjects(object)
			findObjects()
		end
	end
end

function love.draw()
	local function runObjects(object)-- Acts on the objects that findObjects finds
		if object.type == "" then   end
	end
	local function findObjects(Tab)
		for i,object in ipairs(Tab) do
			runObjects(object)
			findObjects()
		end
	end
end