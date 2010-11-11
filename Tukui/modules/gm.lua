------------------------------------------------------------------------
--	GM ticket position
------------------------------------------------------------------------

TicketStatusFrame:ClearAllPoints()
TicketStatusFrame:SetPoint("TOP", TukuiDB.Scale(0), TukuiDB.Scale(-14))

------------------------------------------------------------------------
--	GM toggle command
------------------------------------------------------------------------

SLASH_GM1 = "/gm"
SlashCmdList["GM"] = function() ToggleHelpFrame() end