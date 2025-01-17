local L = Grid2Options.L

Grid2Options:RegisterStatusOptions("combat", "combat", function(self, status, options)
	self:MakeStatusStandardOptions(status, options)
	self:MakeSpacerOptions(options, 30)
	options.enabledOOC = {
		type = "toggle",
		order = 150,
		width = "full",
		name = L["Active Out Of Combat"],
		desc = L["Enable this option to invert the status so it will become activated when the player is Out Of Combat."],
		get = function(info) return status.dbx.enabledOOC end,
		set = function(info, v)
			status.dbx.enabledOOC = v or nil
			if status.enabled then
				status:UpdateDB()
				status:UpdateAllUnits()
			end
		end,
	}
	options.useEmptyIcon = {
		type = "toggle",
		order = 155,
		width = "full",
		name = L["Use Empty Icon"],
		desc = L["Displays an invisible Icon."],
		get = function(info) return status.dbx.useEmptyIcon end,
		set = function(info, v)
			status.dbx.useEmptyIcon = v or nil
			if status.enabled then
				status:UpdateDB()
				status:UpdateAllUnits()
			end
		end,
	}
end, {
	titleIcon = [[Interface\CharacterFrame\UI-StateIcon]],
	titleIconCoords = {0.55, 0.93, 0.07, 0.42},
})

Grid2Options:RegisterStatusOptions("combat-mine", "combat", function(self, status, options)
	self:MakeStatusStandardOptions(status, options)
	self:MakeSpacerOptions(options, 30)
	options.enabledOOC = {
		type = "toggle",
		order = 150,
		width = "full",
		name = L["Active Out Of Combat"],
		desc = L["Enable this option to invert the status so it will become activated when the player is Out Of Combat."],
		get = function(info) return status.dbx.enabledOOC end,
		set = function(info, v)
			status.dbx.enabledOOC = v or nil
			if status.enabled then
				status:UpdateDB()
				status:UpdateAllUnits()
			end
		end,
	}
	options.useEmptyIcon = {
		type = "toggle",
		order = 155,
		width = "full",
		name = L["Use Empty Icon"],
		desc = L["Displays an invisible Icon."],
		get = function(info) return status.dbx.useEmptyIcon end,
		set = function(info, v)
			status.dbx.useEmptyIcon = v or nil
			if status.enabled then
				status:UpdateDB()
				status:UpdateAllUnits()
			end
		end,
	}
end, {
	titleIcon = [[Interface\CharacterFrame\UI-StateIcon]],
	titleIconCoords = {0.55, 0.93, 0.07, 0.42},
})
