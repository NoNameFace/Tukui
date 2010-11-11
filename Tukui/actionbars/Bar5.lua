if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarBottomRight as bar #5
---------------------------------------------------------------------------

local TukuiBar5 = CreateFrame("Frame","TukuiBar5",UIParent) -- MultiBarBottomRight
TukuiBar5:SetAllPoints(TukuiActionBarBackground)
MultiBarBottomRight:SetParent(TukuiBar5)

for i= 1, 12 do
	local b = _G["MultiBarBottomRightButton"..i]
	local b2 = _G["MultiBarBottomRightButton"..i-1]
	b:SetSize(TukuiDB.buttonsize, TukuiDB.buttonsize)
	b:ClearAllPoints()
	if i == 1 then
		if TukuiCF.actionbar.rightbars > 1 then
			b:SetPoint("BOTTOMLEFT", TukuiChatBackgroundRight, "TOPLEFT", 0, TukuiDB.Scale(53))
		end
	else
		if TukuiCF.actionbar.rightbars > 1 then
			b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
		end
	end
end

-- hide it if needed
if (TukuiDB.lowversion and TukuiCF.actionbar.rightbars < 2) or (TukuiCF.actionbar.bottomrows == 1 and TukuiCF.actionbar.rightbars < 2) then
	TukuiBar5:Hide()
end

MultiBarBottomRightButton12:SetScale(0.0001)
MultiBarBottomRightButton12:SetAlpha(0)
