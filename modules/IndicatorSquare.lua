--[[ Square indicator, created by Grid2 original authors, modified by Michael ]]--

local Grid2= Grid2

local function Square_Create(self, parent)
	local Square = self:CreateFrame("Frame", parent)
	Square:SetBackdropBorderColor(0,0,0,1)
	Square:SetBackdropColor(1,1,1,1)
end

local function Square_GetBlinkFrame(self, parent)
	return parent[self.name]
end

local function Square_OnUpdate(self, parent, unit, status)
	local Square = parent[self.name]
	if status then
		Square:SetBackdropColor(status:GetColor(unit))
		if self.borderSize then
			local c= self.color
			Square:SetBackdropBorderColor( c.r, c.g, c.b, c.a )
		end
		Square:Show()
	else
		Square:Hide()
	end
end

local function Square_Layout(self, parent)
	local Square, container = parent[self.name], parent.container
	Square:ClearAllPoints()
	Square:SetFrameLevel(parent:GetFrameLevel() + self.frameLevel)
	Square:SetPoint(self.anchor, container, self.anchorRel, self.offsetx, self.offsety)
	Square:SetWidth( self.width or container:GetWidth() )
	Square:SetHeight( self.height or container:GetHeight() )
	local r1,g1,b1,a1 = Square:GetBackdropColor()
	local r2,g2,b2,a2 = Square:GetBackdropBorderColor()
	local borderSize  = self.borderSize 
	if borderSize then
		Square:SetBackdrop({ bgFile = self.texture, tile = false, tileSize = 0,
							 edgeFile = "Interface\\Addons\\Grid2\\white16x16", edgeSize = borderSize,
							 insets = {left = borderSize, right = borderSize, top = borderSize, bottom = borderSize} })
	else
		Square:SetBackdrop({ bgFile = self.texture, tile = false, tileSize = 0,
							 insets = {left = 0, right = 0, top = 0, bottom = 0} })
	end
	Square:SetBackdropColor(r1,g1,b1,a1)
	Square:SetBackdropBorderColor(r2,g2,b2,a2)
end

local function Square_Disable(self, parent)
	parent[self.name]:Hide()
	self.GetBlinkFrame = nil
	self.Layout = nil
	self.OnUpdate = nil
end

local function Square_UpdateDB(self, dbx)
	dbx= dbx or self.dbx
	local media = LibStub("LibSharedMedia-3.0", true)
	self.texture = media and media:Fetch("statusbar", dbx.texture or "Grid2 Flat") or "Interface\\Addons\\Grid2\\white16x16"
	local l= dbx.location
	self.anchor = l.point
	self.anchorRel = l.relPoint
	self.offsetx = l.x
	self.offsety = l.y
	self.width = dbx.size or dbx.width
	if self.width==0 then self.width= nil end
	self.height= dbx.size or dbx.height
	if self.height==0 then self.height= nil end
	self.frameLevel = dbx.level
	self.color= Grid2:MakeColor(dbx.color1)
	self.borderSize= dbx.borderSize
	self.Create = Square_Create
	self.GetBlinkFrame = Square_GetBlinkFrame
	self.Layout = Square_Layout
	self.OnUpdate = Square_OnUpdate
	self.Disable = Square_Disable
	self.UpdateDB = Square_UpdateDB
	self.dbx = dbx
end


local function Create(indicatorKey, dbx)
	local existingIndicator = Grid2.indicators[indicatorKey]
	local indicator = existingIndicator or Grid2.indicatorPrototype:new(indicatorKey)
	Square_UpdateDB(indicator, dbx)
	Grid2:RegisterIndicator(indicator, { "square" })
	return indicator
end

Grid2.setupFunc["square"] = Create
 