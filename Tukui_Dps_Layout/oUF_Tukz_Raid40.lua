if not TukuiCF["unitframes"].enable == true then return end

local font2 = TukuiCF["media"].uffont
local font1 = TukuiCF["media"].font

local function Shared(self, unit)
	self.colors = TukuiDB.oUF_colors
	self:RegisterForClicks("LeftButtonDown", "RightButtonDown")
	self:SetScript('OnEnter', UnitFrame_OnEnter)
	self:SetScript('OnLeave', UnitFrame_OnLeave)
	
	self.menu = TukuiDB.SpawnMenu
	
	self:SetBackdrop({bgFile = TukuiCF["media"].blank, insets = {top = -TukuiDB.mult, left = -TukuiDB.mult, bottom = -TukuiDB.mult, right = -TukuiDB.mult}})
	self:SetBackdropColor(0.1, 0.1, 0.1)
	
	-- border
	local selfborder = CreateFrame("Frame", nil, self)
	TukuiDB.CreatePanel(selfborder, 1, 1, "CENTER", self, "CENTER", 0, 0)
	selfborder:ClearAllPoints()
	selfborder:SetPoint("TOPLEFT", self, TukuiDB.Scale(-2), TukuiDB.Scale(2))
	selfborder:SetPoint("BOTTOMRIGHT", self, TukuiDB.Scale(2), TukuiDB.Scale(-2))
	selfborder:SetFrameStrata("MEDIUM")
	selfborder:SetFrameLevel(2)
	
	local health = CreateFrame('StatusBar', nil, self)
    health:SetAllPoints(self)
	health:SetStatusBarTexture(TukuiCF["media"].normTex)
	self.Health = health

	health.bg = self.Health:CreateTexture(nil, 'BORDER')
	health.bg:SetAllPoints(self.Health)
	health.bg:SetTexture(TukuiCF["media"].blank)
	health.bg:SetTexture(0.3, 0.3, 0.3)
	health.bg.multiplier = (0.3)
	
	self.Health.bg = health.bg
	
	health.PostUpdate = TukuiDB.PostUpdatePetColor
	health.frequentUpdates = true
	
	if TukuiCF.unitframes.unicolor == true then
		health.colorDisconnected = false
		health.colorClass = false
		health:SetStatusBarColor(.2, .2, .2, 1)
		health.bg:SetVertexColor(.2, .2, .2, 1)		
	else
		health.colorDisconnected = true
		health.colorClass = true
		health.colorReaction = true			
	end
		
	local name = health:CreateFontString(nil, 'OVERLAY')
	name:SetFont(font2, 13*TukuiDB.raidscale)
	name:SetPoint("LEFT", self, TukuiDB.Scale(2), -2)
	self:Tag(name, '[Tukui:namemedium] [Tukui:dead][Tukui:afk]')
	self.Name = name
	
	if TukuiCF["unitframes"].showsymbols == true then
		RaidIcon = health:CreateTexture(nil, 'OVERLAY')
		RaidIcon:SetHeight(TukuiDB.Scale(14*TukuiDB.raidscale))
		RaidIcon:SetWidth(TukuiDB.Scale(14*TukuiDB.raidscale))
		RaidIcon:SetPoint("CENTER", self, "CENTER")
		RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\media\\textures\\raidicons.blp") -- thx hankthetank for texture
		self.RaidIcon = RaidIcon
	end
	
	if TukuiCF["unitframes"].aggro == true then
		table.insert(self.__elements, TukuiDB.UpdateThreat)
		self:RegisterEvent('PLAYER_TARGET_CHANGED', TukuiDB.UpdateThreat)
		self:RegisterEvent('UNIT_THREAT_LIST_UPDATE', TukuiDB.UpdateThreat)
		self:RegisterEvent('UNIT_THREAT_SITUATION_UPDATE', TukuiDB.UpdateThreat)
    end
	
	local ReadyCheck = health:CreateTexture(nil, "OVERLAY")
	ReadyCheck:SetHeight(TukuiDB.Scale(12*TukuiDB.raidscale))
	ReadyCheck:SetWidth(TukuiDB.Scale(12*TukuiDB.raidscale))
	ReadyCheck:SetPoint('CENTER')
	self.ReadyCheck = ReadyCheck
	
	--local picon = self.Health:CreateTexture(nil, 'OVERLAY')
	--picon:SetPoint('CENTER', self.Health)
	--picon:SetSize(16, 16)
	--picon:SetTexture[[Interface\AddOns\Tukui\media\textures\picon]]
	--picon.Override = TukuiDB.Phasing
	--self.PhaseIcon = picon
	
	self.DebuffHighlightAlpha = 1
	self.DebuffHighlightBackdrop = true
	self.DebuffHighlightFilter = true

	if TukuiCF["unitframes"].showsmooth == true then
		health.Smooth = true
	end
	
	if TukuiCF["unitframes"].showrange == true then
		local range = {insideAlpha = 1, outsideAlpha = TukuiCF["unitframes"].raidalphaoor}
		self.Range = range
	end
	
	return self
end

oUF:RegisterStyle('TukuiDpsR40', Shared)
oUF:Factory(function(self)
	oUF:SetActiveStyle("TukuiDpsR40")

	local raid = self:SpawnHeader("oUF_TukuiDpsRaid40", nil, "custom [@raid26,exists] show;hide", 
		'oUF-initialConfigFunction', [[
			local header = self:GetParent()
			self:SetWidth(header:GetAttribute('initial-width'))
			self:SetHeight(header:GetAttribute('initial-height'))
		]],
		'initial-width', TukuiDB.Scale(100*TukuiDB.raidscale),
		'initial-height', TukuiDB.Scale(12*TukuiDB.raidscale),
		"showPlayer", true,
		"showRaid", true,
		"xoffset", TukuiDB.Scale(3),
		"yOffset", TukuiDB.Scale(-3),
		"point", "LEFT",
		"groupFilter", "1,2,3,4,5,6,7,8",
		"groupingOrder", "1,2,3,4,5,6,7,8",
		"groupBy", "GROUP",
		"maxColumns", 8,
		"unitsPerColumn", 5,
		"columnSpacing", TukuiDB.Scale(3),
		"columnAnchorPoint", "TOP"
	)
	raid:SetPoint('TOPLEFT', UIParent, 15, -18)
end)