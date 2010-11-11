if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarBottomLeft as bar #2
---------------------------------------------------------------------------

local TukuiBar2 = CreateFrame("Frame","TukuiBar2",UIParent)
TukuiBar2:SetAllPoints(TukuiActionBarBackground)
MultiBarBottomLeft:SetParent(TukuiBar2)

for i=1, 12 do
	local b = _G["MultiBarBottomLeftButton"..i]
	local b2 = _G["MultiBarBottomLeftButton"..i-1]
	b:SetSize(TukuiDB.buttonsize, TukuiDB.buttonsize)
	b:ClearAllPoints()
	if i == 1 then
		if  TukuiCF.actionbar.bottomrows == 2 then
			b:SetPoint("TOP", ActionButton1, "BOTTOM", 0, -TukuiDB.Scale(4))
		end
	else
		b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
	end
end

-- hide it if needed
if (TukuiCF.actionbar.bottomrows == 1 and TukuiDB.lowversion) then
	TukuiBar2:Hide()
end