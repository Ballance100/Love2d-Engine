function love.load()
	camera = require("hump.camera")
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

	end

	local function findObjects(Tab)
		for i,object in ipairs(Tab) do
			runObjects(object)
			findObjects()
		end
	end
end