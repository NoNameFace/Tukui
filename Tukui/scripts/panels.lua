-- ACTION BAR PANEL
TukuiDB.buttonsize = TukuiDB.Scale(26)
TukuiDB.buttonspacing = TukuiDB.Scale(4)
TukuiDB.petbuttonsize = TukuiDB.Scale(25)
TukuiDB.petbuttonspacing = TukuiDB.Scale(4)
TukuiDB.stancebuttonsize = TukuiDB.Scale(26)

-- set left and right info panel/chatbox panel width
TukuiCF["panels"] = {["tinfowidth"] = 326}

local barbg = CreateFrame("Frame", "TukuiActionBarBackground", UIParent)
barbg:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, TukuiDB.Scale(14))
barbg:SetWidth((TukuiDB.buttonsize * 12) + (TukuiDB.buttonspacing * 13))
if TukuiCF["actionbar"].bottomrows == 2 then
	barbg:SetHeight((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
else
	barbg:SetHeight(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
end
barbg:SetFrameStrata("BACKGROUND")
barbg:SetFrameLevel(1)

-- INVISIBLE FRAME COVERING TukuiActionBarBackground
local invbarbg = CreateFrame("Frame", "InvTukuiActionBarBackground", UIParent)
if TukuiDB.lowversion == true then
	invbarbg:SetWidth((TukuiDB.buttonsize * 12) + (TukuiDB.buttonspacing * 13))
	if TukuiCF["actionbar"].bottomrows == 2 then
		invbarbg:SetHeight((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
	else
		invbarbg:SetHeight(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
	end
else
	invbarbg:SetWidth((TukuiDB.buttonsize * 22) + (TukuiDB.buttonspacing * 23))
	if TukuiCF["actionbar"].bottomrows == 2 then
		invbarbg:SetHeight((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
	else
		invbarbg:SetHeight(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
	end
end
invbarbg:SetPoint("BOTTOM", 0, TukuiDB.Scale(14))

-- SPLITBAR PANELS
if TukuiCF.actionbar.splitbar == true then
	local sbarbgl = CreateFrame("Frame", "TukuiSplitActionBarBackgroundLeft", UIParent)
	sbarbgl:SetPoint("BOTTOMRIGHT", barbg, "BOTTOMLEFT", -TukuiDB.Scale(-4), 0)
	sbarbgl:SetWidth((TukuiDB.buttonsize * 3) + (TukuiDB.buttonspacing * 4))
	if TukuiCF["actionbar"].bottomrows == 2 then
		sbarbgl:SetHeight((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
	else
		sbarbgl:SetHeight(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
	end
	sbarbgl:SetFrameStrata("BACKGROUND")
	sbarbgl:SetFrameLevel(2)
 
	local sbarbgr = CreateFrame("Frame", "TukuiSplitActionBarBackgroundRight", UIParent)
	sbarbgr:SetPoint("BOTTOMLEFT", barbg, "BOTTOMRIGHT", TukuiDB.Scale(-4), 0)
	sbarbgr:SetWidth((TukuiDB.buttonsize * 3) + (TukuiDB.buttonspacing * 4))
	if TukuiCF["actionbar"].bottomrows == 2 then
		sbarbgr:SetHeight((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
	else
		sbarbgr:SetHeight(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
	end
	sbarbgr:SetFrameStrata("BACKGROUND")
	sbarbgr:SetFrameLevel(2)
end
--[[
-- top and bottom window panels
local tpanel = CreateFrame("Frame", "TukuiTopPanel", UIParent)
TukuiDB.CreatePanel(tpanel, (GetScreenWidth() * UIParent:GetEffectiveScale()) * 2, 22, "TOP", UIParent, "TOP", 0, 5)
tpanel:SetFrameLevel(0)

local bpanel = CreateFrame("Frame", "TukuiBottomPanel", UIParent)
TukuiDB.CreatePanel(bpanel, (GetScreenWidth() * UIParent:GetEffectiveScale()) * 2, 25, "BOTTOM", UIParent, "BOTTOM", 0, -5)
bpanel:SetFrameLevel(0)
]]--
-- left datatext panel
local ileft = CreateFrame("Frame", "TukuiInfoLeft", barbg)
TukuiDB.CreatePanel(ileft, TukuiCF["panels"].tinfowidth, 18, "BOTTOMLEFT", UIParent, TukuiDB.Scale(10), TukuiDB.Scale(10))
ileft:SetFrameLevel(2)
ileft:SetFrameStrata("BACKGROUND")

-- left chat background
local chatleftbg = CreateFrame("Frame", "TukuiChatBackgroundLeft", TukuiInfoLeft)
TukuiDB.CreateTransparentPanel(chatleftbg, TukuiCF["panels"].tinfowidth, TukuiDB.Scale(118), "BOTTOM", TukuiInfoLeft, "TOP", 0, TukuiDB.Scale(3))
chatleftbg:SetBackdropColor(0,0,0,0.7)

-- left chat tab panel
local lctabpan = CreateFrame("Frame", "LeftChatTabPanel", UIParent)
TukuiDB.CreatePanel(lctabpan, TukuiCF["panels"].tinfowidth, 18, "BOTTOM", chatleftbg, "TOP", -10, TukuiDB.Scale(3))
lctabpan:SetWidth(TukuiDB.Scale(305))

-- right datatext panel
local iright = CreateFrame("Frame", "TukuiInfoRight", barbg)
TukuiDB.CreatePanel(iright, TukuiCF["panels"].tinfowidth, 18, "BOTTOMRIGHT", UIParent, TukuiDB.Scale(-10), TukuiDB.Scale(10))
iright:SetFrameLevel(2)
iright:SetFrameStrata("BACKGROUND")

-- right chat background
local chatrightbg = CreateFrame("Frame", "TukuiChatBackgroundRight", TukuiInfoRight)
TukuiDB.CreateTransparentPanel(chatrightbg, TukuiCF["panels"].tinfowidth, TukuiDB.Scale(118), "BOTTOM", TukuiInfoRight, "TOP", 0, TukuiDB.Scale(3))
chatrightbg:SetBackdropColor(0,0,0,0.7)

-- right chat tab panel
local rctabpan = CreateFrame("Frame", "RightChatTabPanel", UIParent)
TukuiDB.CreatePanel(rctabpan, TukuiCF["panels"].tinfowidth, 18, "BOTTOM", chatrightbg, "TOP", -10, TukuiDB.Scale(3))
rctabpan:SetWidth(TukuiDB.Scale(305))

-- minimap datatext panels
if TukuiMinimap then
	local minimapstatsleft = CreateFrame("Frame", "TukuiMinimapStatsLeft", TukuiMinimap)
	TukuiDB.CreatePanel(minimapstatsleft, ((TukuiMinimap:GetWidth() + 4) / 2) -2, 18, "TOPLEFT", TukuiMinimap, "BOTTOMLEFT", 0, TukuiDB.Scale(-3))

	local minimapstatsright = CreateFrame("Frame", "TukuiMinimapStatsRight", TukuiMinimap)
	TukuiDB.CreatePanel(minimapstatsright, ((TukuiMinimap:GetWidth() + 4) / 2) -2, 18, "TOPRIGHT", TukuiMinimap, "BOTTOMRIGHT", 0, TukuiDB.Scale(-3))
	
	local minimapstatstop = CreateFrame("Frame", "TukuiMinimapStatsTop", UIParent)
    TukuiDB.CreatePanel(minimapstatstop, 148, 18, "TOPRIGHT", Minimap, "TOPRIGHT", 2, 23)
	end

-- CUBE AT LEFT, ACT AS A BUTTON (CHAT MENU)
local cubeleft = CreateFrame("Frame", "TukuiCubeLeft", barbg)
TukuiDB.CreatePanel(cubeleft, 18, 18, "LEFT", lctabpan, "RIGHT", TukuiDB.Scale(3), 0)
cubeleft:EnableMouse(true)
cubeleft:SetScript("OnMouseDown", function(self, btn)
	if TukuiInfoLeftBattleGround and UnitInBattleground("player") then
		if btn == "RightButton" then
			if TukuiInfoLeftBattleGround:IsShown() then
				TukuiInfoLeftBattleGround:Hide()
			else
				TukuiInfoLeftBattleGround:Show()
			end
		end
	end
	
	if btn == "LeftButton" then	
		ToggleFrame(ChatMenu)
	end
end)

-- CUBE AT RIGHT, ACT AS A BUTTON (CONFIGUI or BG'S)
local cuberight = CreateFrame("Frame", "TukuiCubeRight", barbg)
TukuiDB.CreatePanel(cuberight, 18, 18, "LEFT", rctabpan, "RIGHT", TukuiDB.Scale(3), 0)
if TukuiCF["bags"].enable then
	cuberight:EnableMouse(true)
	cuberight:SetScript("OnMouseDown", function(self)
		ToggleKeyRing()
	end)
end

--RIGHT BAR BACKGROUND
if TukuiCF["actionbar"].enable == true then
	local barbgr = CreateFrame("Frame", "TukuiActionBarBackgroundRight", UIParent)
	barbgr:SetHeight((TukuiDB.buttonsize * 12) + (TukuiDB.buttonspacing * 13))
	barbgr:SetPoint("RIGHT", UIParent, "RIGHT", TukuiDB.Scale(-23), TukuiDB.Scale(-13.5))
	if TukuiCF["actionbar"].rightbars == 1 then
		barbgr:SetWidth(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
	elseif TukuiCF["actionbar"].rightbars == 2 then
		barbgr:SetWidth((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
	elseif TukuiCF["actionbar"].rightbars == 3 then
		barbgr:SetWidth((TukuiDB.buttonsize * 3) + (TukuiDB.buttonspacing * 4))
	else
		barbgr:Hide()
	end

	local petbg = CreateFrame("Frame", "TukuiPetActionBarBackground", UIParent)
	petbg:SetSize(TukuiDB.petbuttonsize + (TukuiDB.petbuttonspacing * 2), (TukuiDB.petbuttonsize * 10) + (TukuiDB.petbuttonspacing * 11))
	if TukuiCF["actionbar"].rightbars > 0 then
		petbg:SetPoint("RIGHT", barbgr, "LEFT", TukuiDB.Scale(-6), 0)
	else
		petbg:SetPoint("RIGHT", UIParent, "RIGHT", TukuiDB.Scale(-6), TukuiDB.Scale(-13.5))
	end
end
--[[
--BATTLEGROUND STATS FRAME
if TukuiCF["datatext"].battleground == true then
	local bgframe = CreateFrame("Frame", "TukuiInfoLeftBattleGround", UIParent)
	TukuiDB.CreatePanel(bgframe, 1, 1, "TOPLEFT", UIParent, "BOTTOMLEFT", 0, 0)
	bgframe:SetAllPoints(ileft)
	bgframe:SetFrameStrata("LOW")
	bgframe:SetFrameLevel(0)
	bgframe:EnableMouse(true)
end
]]--
--BATTLEGROUND STATS FRAME
if TukuiCF["datatext"].battleground == true then
	local bgframe = CreateFrame("Frame", "TukuiInfoLeftBattleGround", UIParent)
	TukuiDB.CreatePanel(bgframe, 1, 1, "TOPLEFT", UIParent, "BOTTOMLEFT", 0, 0)
	bgframe:SetAllPoints(ileft)
	bgframe:SetFrameStrata("LOW")
	bgframe:SetFrameLevel(0)
	bgframe:EnableMouse(true)
		local function OnEvent(self, event)
		if event == "PLAYER_ENTERING_WORLD" then
			inInstance, instanceType = IsInInstance()
			if inInstance and (instanceType == "pvp") then
				bgframe:Show()
			else
				bgframe:Hide()
			end
		end
	end
	bgframe:RegisterEvent("PLAYER_ENTERING_WORLD")
	bgframe:SetScript("OnEvent", OnEvent)
end

-- Rep/Exp bar
local tukuirepexp = CreateFrame("Frame", "TukuiRepExp", TukuiInfoRight)
TukuiDB.CreatePanel(tukuirepexp, TukuiMinimap:GetWidth() + TukuiDB.Scale(4), 12, "TOPLEFT", TukuiMinimapStatsLeft, "BOTTOMLEFT", 0, TukuiDB.Scale(-3))
if TukuiDB.level == MAX_PLAYER_LEVEL then
	local function OnEvent(self, event)
		local name, id, min, max, value = GetWatchedFactionInfo()
		if(not GetWatchedFactionInfo()) then
			tukuirepexp:SetAlpha(0) 
		else
			tukuirepexp:SetAlpha(1)
		end
	end
	tukuirepexp:RegisterEvent("UPDATE_FACTION")
	tukuirepexp:SetScript("OnEvent", OnEvent)
end