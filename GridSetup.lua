--[[
Created by Grid2 original authors, modified by Michael
--]]

local Grid2= Grid2

function Grid2:SetupIndicators(setup)

    -- remove old indicators 
	for _, indicator in Grid2:IterateIndicators() do
		Grid2:UnregisterIndicator(indicator)        
	end

	-- add new indicator types
	for baseKey, dbx in pairs(setup) do
		local setupFunc = self.setupFunc[dbx.type]
		if (setupFunc) then
			setupFunc(baseKey, dbx)
        else
			Grid2:Debug("SetupIndicators setupFunc not found for indicator: ", dbx.type)
		end
	end
	
end

function Grid2:SetupStatuses(setup)
  
	-- remove old statuses
	for _, status in Grid2:IterateStatuses() do
		Grid2:UnregisterStatus(status)
	end

	-- add new statuses
	for baseKey, dbx in pairs(setup) do
		local setupFunc = self.setupFunc[dbx.type]
		if (setupFunc) then
			setupFunc(baseKey, dbx)
        else
			 Grid2:Debug("SetupStatuses setupFunc not found for status: ", dbx.type)
		end

	end
end

function Grid2:SetupStatusMap(setup)
	for baseKey, map in pairs(setup) do
		local indicator = self.indicators[baseKey]
		if (indicator) then
			for statusKey, priority in pairs(map) do
				local status = self.statuses[statusKey]
				if (status and tonumber(priority)) then
					indicator:RegisterStatus(status, priority)
				else
					Grid2:Debug("Grid2:SetupStatusMap failed mapping:", statusKey, "status:", status, "priority:", priority, "indicator:", baseKey)
				end
			end
		else
			Grid2:Debug("Grid2:SetupStatusMap Could not find mapped indicator baseKey:", baseKey)
		end
	end
end
--[[
/dump Grid2.statuses["soulstone"]
--]]

local handlerArray = {}
function Grid2:MakeStatusColorHandler(status)
	local dbx = status.dbx
	local colorCount = dbx.colorCount or 1
	if (colorCount <= 0) then
		self:Print("Invalid number of colors for status %s", status.name)
		return
	end

	wipe(handlerArray)
	handlerArray[1] = "return function (self, unit)"
	local index = 2
	local color
	if (colorCount > 1) then
		handlerArray[index] = " local count = self:GetCount(unit)"
		index = index + 1
		for i = 1, colorCount - 1 do
			color = dbx["color" .. i]
			handlerArray[index] = (" if count == %d then return %s, %s, %s, %s end"):format(i, color.r, color.g, color.b, color.a)
			index = index + 1
		end
	end
	color = dbx[("color" .. colorCount)]
	handlerArray[index] = (" return %s, %s, %s, %s end"):format(color.r, color.g, color.b, color.a)

	local handler = table.concat(handlerArray)
	status.GetColor = assert(loadstring(handler))()
	return handler
end

function Grid2:MakeTextHandler(status)
	status.GetText = status.GetTextDefault
	assert(status.GetText, "nil GetTextDefault")
	return status.GetText
end

local defaultColor= {r=0,g=0,b=0,a=0}
function Grid2:MakeColor(color)
	return color or defaultColor
end

function Grid2:Setup()
   local config= Grid2.db.profile
   Grid2:SetupIndicators(config.indicators)
   Grid2:SetupStatuses(config.statuses)
   Grid2:SetupStatusMap(config.statusMap)
end

--[[
/dump Grid2.statuses["death"]
/dump Grid2.statuses["buff-ArcaneIntellect"]
--]]