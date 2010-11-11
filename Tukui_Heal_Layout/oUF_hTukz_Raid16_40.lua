if not TukuiCF["unitframes"].enable == true then return end

local font2 = TukuiCF["media"].uffont
local font1 = TukuiCF["media"].font
local normTex = TukuiCF["media"].normTex

local function Shared(self, unit)
	self.colors = TukuiDB.oUF_colors
	self:RegisterForClicks("LeftButtonDown", "RightButtonDown")
	self:SetScript('OnEnter', UnitFrame_OnEnter)
	self:SetScript('OnLeave', UnitFrame_OnLeave)
	
	self.menu = TukuiDB.SpawnMenu
	
	self:SetBackdrop({bgFile = TukuiCF["media"].blank, insets = {top = -TukuiDB.mult, left = -TukuiDB.mult, bottom = -TukuiDB.mult, right = -TukuiDB.mult}})
	self:SetBackdropColor(0.1, 0.1, 0.1)
	
	local health = CreateFrame('StatusBar', nil, self)
	health:SetPoint("TOPLEFT")
	health:SetPoint("TOPRIGHT")
	health:SetHeight(TukuiDB.Scale(35*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale)) --height
	health:SetStatusBarTexture(normTex)
	self.Health = health
	
	if TukuiCF["unitframes"].gridhealthvertical == true then
		health:SetOrientation('VERTICAL')
	end
	
	health.bg = health:CreateTexture(nil, 'BORDER')
	health.bg:SetAllPoints(health)
	health.bg:SetTexture(normTex)
	health.bg:SetTexture(0.4, 0.4, 0.4)
	health.bg.multiplier = (0.3)
	self.Health.bg = health.bg
	
	--
	local healthborder = CreateFrame("Frame", nil, self)
	TukuiDB.CreatePanel(healthborder, 1, 1, "CENTER", health, "CENTER", 0, 0)
	healthborder:ClearAllPoints()
	healthborder:SetPoint("TOPLEFT", health, TukuiDB.Scale(-2), TukuiDB.Scale(2))
	healthborder:SetPoint("BOTTOMRIGHT", health, TukuiDB.Scale(2), TukuiDB.Scale(-2))
	healthborder:SetFrameStrata("MEDIUM")
	healthborder:SetFrameLevel(2)
	
	health.value = health:CreateFontString(nil, "OVERLAY")
	health.value:SetPoint("CENTER", health, TukuiDB.Scale(1), 6)
	health.value:SetFont(font2, 11*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale, "THINOUTLINE")
	health.value:SetTextColor(1,1,1)
	health.value:SetShadowOffset(1, -1)
	self.Health.value = health.value
	
	health.PostUpdate = TukuiDB.PostUpdateHealthRaid
	
	health.frequentUpdates = true
	
	if TukuiCF.unitframes.unicolor == true then
		health.colorDisconnected = false
		health.colorClass = false
		health:SetStatusBarColor(.2, .2, .2, 1)
		health.bg:SetVertexColor(.1, .1, .1)		
	else
		health.colorDisconnected = true
		health.colorClass = true
		health.colorReaction = true			
	end
		
	local power = CreateFrame("StatusBar", nil, self)
	power:SetHeight(2*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale)
	power:SetPoint("TOPLEFT", self.Health, "BOTTOMLEFT", 0, TukuiDB.Scale(-3))
	power:SetPoint("TOPRIGHT", self.Health, "BOTTOMRIGHT", 0, TukuiDB.Scale(-3))
	power:SetStatusBarTexture(normTex)
	self.Power = power

	--
	local powerborder = CreateFrame("Frame", nil, self)
	TukuiDB.CreatePanel(powerborder, 1, 1, "CENTER", health, "CENTER", 0, 0)
	powerborder:ClearAllPoints()
	powerborder:SetPoint("TOPLEFT", power, TukuiDB.Scale(-2), TukuiDB.Scale(2))
	powerborder:SetPoint("BOTTOMRIGHT", power, TukuiDB.Scale(2), TukuiDB.Scale(-2))
	powerborder:SetFrameStrata("MEDIUM")
	powerborder:SetFrameLevel(2)
	
	power.frequentUpdates = true
	power.colorDisconnected = true

	power.bg = power:CreateTexture(nil, "BORDER")
	power.bg:SetAllPoints(power)
	power.bg:SetTexture(normTex)
	power.bg:SetAlpha(1)
	power.bg.multiplier = 0.4
	
	if TukuiCF.unitframes.unicolor == true then
		power.colorClass = true
		power.bg.multiplier = 0.1				
	else
		power.colorPower = true
	end
	
	local name = health:CreateFontString(nil, "OVERLAY")
    name:SetPoint("CENTER", health, "CENTER", TukuiDB.Scale(0), -5, "THINOUTLINE") -- move name
	name:SetFont(font2, 12*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale)
	self:Tag(name, "[Tukui:getnamecolor][Tukui:nameshort]")
	name:SetShadowColor(0, 0, 0)
	name:SetShadowOffset(1.25, -1.25)
	self.Name = name
	
    if TukuiCF["unitframes"].aggro == true then
		table.insert(self.__elements, TukuiDB.UpdateThreat)
		self:RegisterEvent('PLAYER_TARGET_CHANGED', TukuiDB.UpdateThreat)
		self:RegisterEvent('UNIT_THREAT_LIST_UPDATE', TukuiDB.UpdateThreat)
		self:RegisterEvent('UNIT_THREAT_SITUATION_UPDATE', TukuiDB.UpdateThreat)
	end
	
	if TukuiCF["unitframes"].showsymbols == true then
		local RaidIcon = health:CreateTexture(nil, 'OVERLAY')
		RaidIcon:SetHeight(TukuiDB.Scale(16*TukuiDB.raidscale))
		RaidIcon:SetWidth(TukuiDB.Scale(16*TukuiDB.raidscale))
		RaidIcon:SetPoint('CENTER', self, 'TOP')
		RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\media\\textures\\raidicons.blp") -- thx hankthetank for texture
		self.RaidIcon = RaidIcon
	end
	
	local LFDRole = health:CreateTexture(nil, "OVERLAY")
    LFDRole:SetHeight(TukuiDB.Scale(7*TukuiDB.raidscale))
    LFDRole:SetWidth(TukuiDB.Scale(7*TukuiDB.raidscale))
	LFDRole:SetPoint("CENTER", TukuiDB.Scale(0), TukuiDB.Scale(-14))
	LFDRole:SetTexture("Interface\\AddOns\\Tukui\\media\\textures\\lfdicons.blp")
	self.LFDRole = LFDRole
	
	local ReadyCheck = power:CreateTexture(nil, "OVERLAY")
	ReadyCheck:SetHeight(TukuiDB.Scale(16*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))
	ReadyCheck:SetWidth(TukuiDB.Scale(16*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))
	ReadyCheck:SetPoint('CENTER') 	
	self.ReadyCheck = ReadyCheck
	
	--local picon = self.Health:CreateTexture(nil, 'OVERLAY')
	--picon:SetPoint('CENTER', self.Health)
	--picon:SetSize(16, 16)
	--picon:SetTexture[[Interface\AddOns\Tukui\media\textures\picon]]
	--picon.Override = TukuiDB.Phasing
	--self.PhaseIcon = picon
	
	if not TukuiCF["unitframes"].raidunitdebuffwatch == true then
		self.DebuffHighlightAlpha = 1
		self.DebuffHighlightBackdrop = true
		self.DebuffHighlightFilter = true
	end
	
	if TukuiCF["unitframes"].showrange == true then
		local range = {insideAlpha = 1, outsideAlpha = TukuiCF["unitframes"].raidalphaoor}
		self.Range = range
	end
	
	if TukuiCF["unitframes"].showsmooth == true then
		health.Smooth = true
		power.Smooth = true
	end
	
	if TukuiCF["unitframes"].healcomm then
		local mhpb = CreateFrame('StatusBar', nil, self.Health)
		if TukuiCF["unitframes"].gridhealthvertical then
			mhpb:SetOrientation("VERTICAL")
			mhpb:SetPoint('BOTTOM', self.Health:GetStatusBarTexture(), 'TOP', 0, 0)
			mhpb:SetWidth(TukuiDB.Scale(66*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))
			mhpb:SetHeight(TukuiDB.Scale(50*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))		
		else
			mhpb:SetPoint('TOPLEFT', self.Health:GetStatusBarTexture(), 'TOPRIGHT', 0, 0)
			mhpb:SetPoint('BOTTOMLEFT', self.Health:GetStatusBarTexture(), 'BOTTOMRIGHT', 0, 0)
			mhpb:SetWidth(TukuiDB.Scale(66*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))
		end				
		mhpb:SetStatusBarTexture(normTex)
		mhpb:SetStatusBarColor(0, 1, 0.5, 0.25)

		local ohpb = CreateFrame('StatusBar', nil, self.Health)
		ohpb:SetPoint('TOPLEFT', mhpb:GetStatusBarTexture(), 'TOPRIGHT', 0, 0)
		ohpb:SetPoint('BOTTOMLEFT', mhpb:GetStatusBarTexture(), 'BOTTOMRIGHT', 0, 0)
		ohpb:SetWidth(TukuiDB.Scale(66*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))
		ohpb:SetStatusBarTexture(normTex)
		ohpb:SetStatusBarColor(0, 1, 0, 0.25)

		self.HealPrediction = {
			myBar = mhpb,
			otherBar = ohpb,
			maxOverflow = 1,
		}
	end
	
	if TukuiCF["unitframes"].raidunitdebuffwatch == true then
		-- AuraWatch (corner icon)
		TukuiDB.createAuraWatch(self,unit)
		
		-- Raid Debuffs (big middle icon)
		local RaidDebuffs = CreateFrame('Frame', nil, self)
		RaidDebuffs:SetHeight(TukuiDB.Scale(22*TukuiCF["unitframes"].gridscale))
		RaidDebuffs:SetWidth(TukuiDB.Scale(22*TukuiCF["unitframes"].gridscale))
		RaidDebuffs:SetPoint('CENTER', health, TukuiDB.Scale(1),0)
		RaidDebuffs:SetFrameStrata(health:GetFrameStrata())
		RaidDebuffs:SetFrameLevel(health:GetFrameLevel() + 2)
		
		TukuiDB.SetTemplate(RaidDebuffs)
		
		RaidDebuffs.icon = RaidDebuffs:CreateTexture(nil, 'OVERLAY')
		RaidDebuffs.icon:SetTexCoord(.1,.9,.1,.9)
		RaidDebuffs.icon:SetPoint("TOPLEFT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
		RaidDebuffs.icon:SetPoint("BOTTOMRIGHT", TukuiDB.Scale(-2), TukuiDB.Scale(2))
		
		-- just in case someone want to add this feature, uncomment to enable it
		--[[
		if TukuiCF["unitframes"].auratimer then
			RaidDebuffs.cd = CreateFrame('Cooldown', nil, RaidDebuffs)
			RaidDebuffs.cd:SetPoint("TOPLEFT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
			RaidDebuffs.cd:SetPoint("BOTTOMRIGHT", TukuiDB.Scale(-2), TukuiDB.Scale(2))
			RaidDebuffs.cd.noOCC = true -- remove this line if you want cooldown number on it
		end
		--]]
		
		RaidDebuffs.count = RaidDebuffs:CreateFontString(nil, 'OVERLAY')
		RaidDebuffs.count:SetFont(TukuiCF["media"].uffont, 9*TukuiCF["unitframes"].gridscale, "THINOUTLINE")
		RaidDebuffs.count:SetPoint('BOTTOMRIGHT', RaidDebuffs, 'BOTTOMRIGHT', 0, 2)
		RaidDebuffs.count:SetTextColor(1, .9, 0)
		
		self.RaidDebuffs = RaidDebuffs
    end
	
	return self
end

oUF:RegisterStyle('TukuiHealR25R40', Shared)
oUF:Factory(function(self)
	oUF:SetActiveStyle("TukuiHealR25R40")	
	if TukuiCF["unitframes"].gridonly ~= true then
		local raid = self:SpawnHeader("oUF_TukuiHealRaid2540", nil, "custom [@raid16,exists] show;hide",
			'oUF-initialConfigFunction', [[
				local header = self:GetParent()
				self:SetWidth(header:GetAttribute('initial-width'))
				self:SetHeight(header:GetAttribute('initial-height'))
			]],
			'initial-width', TukuiDB.Scale(67*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale),
			'initial-height', TukuiDB.Scale(50*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale),	
			"showRaid", true,
			"xoffset", TukuiDB.Scale(7),
			"yOffset", TukuiDB.Scale(-7),
			"point", "LEFT",
			"groupFilter", "1,2,3,4,5,6,7,8",
			"groupingOrder", "1,2,3,4,5,6,7,8",
			"groupBy", "GROUP",
			"maxColumns", 8,
			"unitsPerColumn", 5,
			"columnSpacing", TukuiDB.Scale(7),
			"columnAnchorPoint", "TOP"		
		)
		raid:SetPoint("BOTTOMLEFT", TukuiActionBarBackground, "TOPLEFT", 10, 0)
	else
		local raid = self:SpawnHeader("oUF_TukuiHealRaid2540", nil, "raid,party,solo",
			'oUF-initialConfigFunction', [[
				local header = self:GetParent()
				self:SetWidth(header:GetAttribute('initial-width'))
				self:SetHeight(header:GetAttribute('initial-height'))
			]],
			'initial-width', TukuiDB.Scale(64.5*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale),
			'initial-height', TukuiDB.Scale(35*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale), --background
			"showSolo", true,
			"showParty", true,
			"showPlayer", true,
			"showRaid", true,
			"xoffset", TukuiDB.Scale(7),
			"yOffset", TukuiDB.Scale(-7),
			"point", "LEFT",
			"groupFilter", "1,2,3,4,5,6,7,8",
			"groupingOrder", "1,2,3,4,5,6,7,8",
			"groupBy", "GROUP",
			"maxColumns", 8,
			"unitsPerColumn", 5,
			"columnSpacing", TukuiDB.Scale(12),
			"columnAnchorPoint", "TOP"
		)
		raid:SetPoint("BOTTOMLEFT", TukuiActionBarBackground, "TOPLEFT", 5, 0)
		
		local pets = {} 
			pets[1] = oUF:Spawn('partypet1', 'oUF_TukuiPartyPet1') 
			pets[1]:SetPoint('TOPLEFT', raid, 'TOPLEFT', 0, -50*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale + TukuiDB.Scale(-5))
			pets[1]:SetSize(TukuiDB.Scale(66*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale), TukuiDB.Scale(44*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale)) --party pet
		for i =2, 4 do 
			pets[i] = oUF:Spawn('partypet'..i, 'oUF_TukuiPartyPet'..i) 
			pets[i]:SetPoint('LEFT', pets[i-1], 'RIGHT', TukuiDB.Scale(7), 0)
			pets[i]:SetSize(TukuiDB.Scale(66*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale), TukuiDB.Scale(50*TukuiCF["unitframes"].gridscale*TukuiDB.raidscale))
		end
		
		local ShowPet = CreateFrame("Frame")
		ShowPet:RegisterEvent("PLAYER_ENTERING_WORLD")
		ShowPet:RegisterEvent("RAID_ROSTER_UPDATE")
		ShowPet:RegisterEvent("PARTY_LEADER_CHANGED")
		ShowPet:RegisterEvent("PARTY_MEMBERS_CHANGED")
		ShowPet:SetScript("OnEvent", function(self)
			if InCombatLockdown() then
				self:RegisterEvent("PLAYER_REGEN_ENABLED")
			else
				self:UnregisterEvent("PLAYER_REGEN_ENABLED")
				local numraid = GetNumRaidMembers()
				local numparty = GetNumPartyMembers()
				if numparty > 0 and numraid == 0 or numraid > 0 and numraid <= 5 then
					for i,v in ipairs(pets) do v:Enable() end
				else
					for i,v in ipairs(pets) do v:Disable() end
				end
			end
		end)		
	end
end)