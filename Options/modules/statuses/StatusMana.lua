local L = Grid2Options.L

Grid2Options:RegisterStatusOptions("lowmana",  "mana", Grid2Options.MakeStatusColorThresholdOptions, {
	titleIcon = "Interface\\Icons\\Inv_potion_86"
})
Grid2Options:RegisterStatusOptions("mana","mana",  function(self, status, options, optionParams)
	self:MakeStatusStandardOptions(status, options, optionParams)
	self:MakeHeaderOptions(options, "Display")
	options.showOnlyHealers = {
		type = "toggle",
		order = 200,
		width= "full",
		name = L["Hide mana of non healer players"],
		tristate = false,
		get = function () return status.dbx.showOnlyHealers end,
		set = function (_, v)
			status.dbx.showOnlyHealers = v or nil
			status:UpdateDB()
			status:UpdateAllUnits()
		end,
	}
end, {
	titleIcon = "Interface\\Icons\\Inv_potion_72"
})

Grid2Options:RegisterStatusOptions("poweralt", "mana", Grid2Options.MakeStatusColorOptions, {
	titleIcon = "Interface\\Icons\\Inv_potion_34"
})
Grid2Options:RegisterStatusOptions("power",    "mana", function(self, status, options, optionParams)
	self:MakeStatusColorOptions(status, options, optionParams)
	self:MakeHeaderOptions(options, "Spec Selection")
	options.specsToggle = {
		type = "toggle",
		order = 200,
		width = "full",
		name = "Show power for all specs",
		tristate = false,
		get = function () return status.dbx.specsToggle end,
		set = function (_, v)
			status.dbx.specsToggle = v or nil
		end,
	}
	options.unitClassSpec = {
		type = "multiselect",
		order = 300,
		name = "Choose specs",
		get = function(_, key) return status.dbx.unitClassSpec[key] ~= nil end,
		set = function(_, key, value)
			status.dbx.unitClassSpec[key] = value or nil
		values = self:MakeClassSpecValuesList()
	}
end, {
	color1 = L["Mana"],
	colorDesc1 = L["Mana"],
	color2 = L["Rage"],
	colorDesc2 = L["Rage"],
	color3 = L["Focus"],
	colorDesc3 = L["Focus"],
	color4 = L["Energy"],
	colorDesc4 = L["Energy"],
	color5 = L["Runic Power"],
	colorDesc5 = L["Runic Power"],
	color6 = L["Insanity"],
	colorDesc6 = L["Insanity"],
	color7 = L["Maelstrom"],
	colorDesc7 = L["Maelstrom"],
	color8 = L["Lunar Power"],
	colorDesc8 = L["Lunar Power"],
	color9 = L["Fury"],
	colorDesc9 = L["Fury"],
	color10 = L["Pain"],
	colorDesc10 = L["Pain"],
	width = "full",
	titleIcon = "Interface\\Icons\\Inv_potion_33"
})
