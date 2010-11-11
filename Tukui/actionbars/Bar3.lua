if not TukuiCF["actionbar"].enable == true then return end
 
---------------------------------------------------------------------------
-- setup MultiBarLeft as bar #3
---------------------------------------------------------------------------
 
local TukuiBar3 = CreateFrame("Frame","TukuiBar3",UIParent) -- bottomrightbar
TukuiBar3:SetAllPoints(TukuiActionBarBackground)
MultiBarLeft:SetParent(TukuiBar3)
 
for i= 1, 12 do
	local b = _G["MultiBarLeftButton"..i]
	local b2 = _G["MultiBarLeftButton"..i-1]
	b:SetSize(TukuiDB.buttonsize, TukuiDB.buttonsize)
	b:ClearAllPoints()
	if TukuiCF.actionbar.rightbars > 2 then
		if i == 1 then
			b:SetPoint("BOTTOMLEFT", TukuiChatBackgroundRight, "TOPLEFT", 0, TukuiDB.Scale(82))
		else
			b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
		end
	elseif TukuiCF.actionbar.splitbar == true then
		if i == 1 then
			b:SetPoint("TOPLEFT", TukuiSplitActionBarBackgroundLeft, TukuiDB.Scale(4), TukuiDB.Scale(-12))
		elseif i == 4 then
			b:SetPoint("TOPLEFT", TukuiSplitActionBarBackgroundRight, TukuiDB.Scale(4), TukuiDB.Scale(-12))
		elseif i == 7 then
			b:SetPoint("BOTTOMLEFT", TukuiSplitActionBarBackgroundLeft, TukuiDB.Scale(4), TukuiDB.Scale(-4))
		elseif i == 10 then
			b:SetPoint("BOTTOMLEFT", TukuiSplitActionBarBackgroundRight, TukuiDB.Scale(4), TukuiDB.Scale(-4))
		else
			b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
		end
	end
end
 
-- hide it if needed
if TukuiCF.actionbar.rightbars < 3 and TukuiCF.actionbar.splitbar == false then
	TukuiBar3:Hide()
end

if TukuiCF.actionbar.splitbar == true and TukuiCF.actionbar.bottomrows == 1 then
	for i= 7, 12 do
		local b = _G["MultiBarLeftButton"..i]
		b:SetAlpha(0)
		b:SetScale(0.0001)
	end
end

if TukuiCF.actionbar.splitbar == false then
	MultiBarLeftButton12:SetScale(0.0001)
	MultiBarLeftButton12:SetAlpha(0)
end