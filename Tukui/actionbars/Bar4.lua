if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarRight as bar #4
---------------------------------------------------------------------------

local TukuiBar4 = CreateFrame("Frame","TukuiBar4",UIParent) -- bottomrightbar
TukuiBar4:SetAllPoints(TukuiActionBarBackground)
MultiBarRight:SetParent(TukuiBar4)

for i= 1, 12 do
	local b = _G["MultiBarRightButton"..i]
	local b2 = _G["MultiBarRightButton"..i-1]
	b:SetSize(TukuiDB.buttonsize, TukuiDB.buttonsize)
	b:ClearAllPoints()
	if i == 1 then
   		 b:SetPoint("BOTTOMLEFT", TukuiChatBackgroundRight, "TOPLEFT", 0, TukuiDB.Scale(24))
	else
		b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
	end	
end

-- hide it if needed
if TukuiCF.actionbar.rightbars < 1 then
	TukuiBar4:Hide()
end

MultiBarRightButton12:SetScale(0.0001)
MultiBarRightButton12:SetAlpha(0)
