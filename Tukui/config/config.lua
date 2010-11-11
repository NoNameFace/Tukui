TukuiCF["general"] = {
	["autoscale"] = true,                  -- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.71,                    -- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["overridelowtohigh"] = false,         -- EXPERIMENTAL ONLY! override lower version to higher version on a lower reso.
	["multisampleprotect"] = true,         -- i don't recommend this because of shitty border but, voila!
}

TukuiCF["unitframes"] = {
	-- general options
	["enable"] = true,                     -- use Tukui built in oUF's
	["enemyhcolor"] = false,               -- enemy target (players) color by hostility, very useful for healer.
	["unitcastbar"] = true,                -- enable tukui castbar
	["cblatency"] = false,                 -- enable castbar latency
	["cbicons"] = true,                    -- enable icons on castbar
	["auratimer"] = true,                  -- enable timers on buffs/debuffs
	["auratextscale"] = 11,                -- the font size of buffs/debuffs timers on unitframes
	["playerauras"] = false,               -- leave this off as it conflicts with Classtimers
	["targetauras"] = true,                -- enable auras on target unit frame
	["highThreshold"] = 80,                -- hunter high threshold
	["lowThreshold"] = 20,                 -- global low threshold, for low mana warning.
	["targetpowerpvponly"] = false,        -- enable power text on pvp target only
	["totdebuffs"] = false,                -- unless you move the tot frame, leave this off
	["focusdebuffs"] = false,              -- unless you move the focus frame, leave this off
	["showfocustarget"] = true,            -- show focus target
	["v"] = false,                         -- set to false to show %/Total of health and mana
	["showsmooth"] = true,                 -- no idea what this is for, but we should leave it on
	["showthreat"] = true,                 -- enable the threat bar (shows on top of bottom left datatext panel).
	["charportrait"] = false,              -- enable character portraits
	["unicolor"] = true,                   -- use soft gray color instead of class colors
	["combatfeedback"] = true,             -- enable combattext on player and target.
	["playeraggro"] = true,                -- color player border to red if you have aggro on current target.
	["positionbychar"] = true,             -- save X, Y position with /uf (movable frame) per character instead of per account.
	["healcomm"] = true,                   -- enable healprediction support.
	["classcolorexp"] = true,              -- color experience bar based on class
    ["maintank"] = true,                   -- enable maintank 
    ["mainassist"] = true,                 -- enable mainassist
	["showsolo"] = true,                   -- show grid when not in raid or group

	-- raid layout
	["showrange"] = true,                  -- show range opacity on raidframes
	["raidalphaoor"] = 0.3,                -- alpha of unitframes when unit is out of range
	["gridonly"] = true,                   -- enable built-in grid look-alike healing frames.
	["showsymbols"] = true,	               -- show raid symbols on player raid frames
	["aggro"] = true,                      -- show aggro on all raid layouts
	["raidunitdebuffwatch"] = true,        -- enable to track debuffs on healing grid frames.
	["gridhealthvertical"] = false,        -- enable vertical grow on health bar for grid mode.
	["showplayerinparty"] = true,          -- show my player frame in party
	["gridscale"] = 1,                     -- set the healing grid scaling
	
	-- boss frames
	["showboss"] = true,                   -- enable boss unit frames.

	-- priest only plugin                  -- these are useless since grid heal frames show this already
	["ws_show_time"] = false,              -- show time on weakened soul bar
	["ws_show_player"] = false,            -- show weakened soul bar on player unit
	["ws_show_target"] = false,            -- show weakened soul bar on target unit
	
	-- death knight only plugin
	["runebar"] = true,                    -- enable tukui runebar plugin
	
	-- shaman only plugin
	["totemtimer"] = false,                 -- BROKEN UNTIL TUKZ FIXES THEM!
}

TukuiCF["arena"] = {
	["unitframes"] = false,                -- enable tukz arena unitframes (requirement : tukui unitframes enabled)
	["spelltracker"] = false,              -- enable tukz enemy spell tracker (an afflicted3 or interruptbar alternative)
}

TukuiCF["actionbar"] = {
	["enable"] = true,                     -- enable tukz action bars
	["hotkey"] = true,                     -- enable hotkey display because it was a lot requested
	["hideshapeshift"] = false,            -- hide shapeshift or totembar because it was a lot requested.
	["bottomrows"] = 2,                    -- numbers of bottom bars to show (select between 1 and 2 only)
	["rightbars"] = 1,                     -- numbers of right bars you want
	["showgrid"] = true,                   -- show grid on empty button
	["splitbar"] = true,                   -- add a split bar to the bottombars
	["horizonpet"] = true,				   -- pet bar placement
}

TukuiCF["nameplate"] = {                   
	["enable"] = true,                     -- enable nameplates made by Elv22
		["showhealth"] = true,			   -- show health text on nameplate
		["enhancethreat"] = true,		   -- threat features based on if your a tank or not
		["showcombo"] = true,			   -- show combo points on nameplate
		["overlap"] = false,			   -- allow nameplates to overlap
}

TukuiCF["bags"] = {
	["enable"] = true,                     -- enable an all in one bag mod that fit tukui perfectly
	["bag_cols"] = 8,                      -- columns in bag, set to false for auto
	["bank_cols"] = 8,                     -- columns in bank, set to false for auto
}

TukuiCF["map"] = {
	["enable"] = true,                     -- reskin the map to fit tukui
}

TukuiCF["loot"] = {
	["lootframe"] = true,                  -- reskin the loot frame to fit tukui
	["rolllootframe"] = true,              -- reskin the roll frame to fit tukui
	["autogreed"] = true,                 -- auto-dez or auto-greed item at max level, auto-greed Frozen orb
}

TukuiCF["cooldown"] = {
	["enable"] = true,                     -- enable cooldowns
	["treshold"] = 8,                      -- show decimal under X seconds and text turn red
}

TukuiCF["datatext"] = {
	["guild"] = 0,                         -- show number on guildmate connected on panels
	["mem"] = 2,                           -- show total memory on panels
	["friends"] = 0,                       -- show number of friends connected.
	["fps_ms"] = 4,                        -- show fps and ms on panels
	["dur"] = 5,                           -- show your equipment durability on panels.
	["bags"] = 6,                          -- show space used in bags on panels
	["haste"] = 7,                         -- show your haste rating on panels.
	["wowtime"] = 8,                       -- show time on panels
	["gold"] = 0,                          -- show your current gold on panels
	["dps_text"] = 0,                      -- show a dps meter on panels
	["hps_text"] = 0,                      -- show a heal meter on panels
	["power"] = 0,                         -- show your attackpower/spellpower/healpower/rangedattackpower whatever stat is higher gets displayed
	["crit"] = 0,                          -- show your crit rating on panels.
	["avd"] = 0,                           -- show your current avoidance against the level of the mob your targeting
	["armor"] = 0,                         -- show your armor value against the level mob you are currently targeting
	["location"] = 0,                      -- location by Grimdore

	-- Extra datatext info by Hydra
	["honor"] = 0,                         -- show the current amount of honor earned.
	["kills"] = 0,                         -- show lifetime honorable kills.
	["zone"] = 9,                          -- show current player zone text.
	["level"] = 0,                         -- show your level
	["hit"] = 0,                           -- show player hit rating.
	["justice"] = 1,                       -- show amount of Justice Points available to spend.
	["mastery"] = 3,                       -- show mastery rating
	
	-- Color Datatext
	["classcolor"] = true,                -- classcolored datatexts
	["color"] = "|cff00AAFF",              -- datatext color if classcolor = false (|cffFFFFFF = white)
	
	["battleground"] = true,               -- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	["time24"] = false,                    -- set time to 24h format.
	["localtime"] = false,                 -- set time to local time instead of server time.
	["fontsize"] = 12,                     -- font size for panels.
}

TukuiCF["chat"] = {
	["enable"] = true,                     -- enable tukui chat
	["whispersound"] = true,               -- play a sound when receiving whisper
	["tabcolor"] = {0,0.7,1},              -- color of chat tabs, disabled if classcolor is true
	["classcolortab"] = true,             -- color chat tabs based on class
}

TukuiCF["tooltip"] = {
	["enable"] = true,                     -- true to enable this mod, false to disable
	["hidecombat"] = false,                -- hide bottom-right tooltip when in combat
	["hidebuttons"] = false,               -- always hide action bar buttons tooltip.
	["hideuf"] = false,                    -- hide tooltip on unitframes
	["cursor"] = false,                    -- tooltip via cursor only
}

TukuiCF["merchant"] = {
	["sellgrays"] = true,                  -- automaticly sell grays?
	["autorepair"] = true,                 -- automaticly repair?
}

TukuiCF["error"] = {
	["enable"] = true,                     -- true to enable this mod, false to disable
	filter = {                             -- what messages to not hide
    ["Inventory is full."] = true,         -- inventory is full will not be hidden by default
    ["Dueling isn't allowed here."] = true,
	["You can't do that while silenced."] = true,
	},
}

TukuiCF["invite"] = { 
	["autoaccept"] = false,                -- auto-accept invite from guildmate and friends.
}

TukuiCF["buffreminder"] = {
	["enable"] = true,                     -- this is now the new innerfire warning script for all armor/aspect class.
	["sound"] = true,                      -- enable warning sound notification for reminder.
}

TukuiCF["others"] = {
	["pvpautorelease"] = true,             -- enable auto-release in bg or wintergrasp. (not working for shaman, sorry)
}

TukuiCF["duelspam"] = {                    -- IN TESTING PHASE! Not everything works yet
    ["hideall"] = true,                   -- Hide duel spam everywhere in game
	["hidetopdal"] = true,                 -- Hide duel spam only on the top level of Dalaran
        ["ignore"] = true,                 -- Auto decline duel invites
}

----------------------------------------------------------------------------
-- Per Class Config (overwrite general)
-- Class need to be UPPERCASE
----------------------------------------------------------------------------

if TukuiDB.myclass == "MAGE" then
	TukuiCF.actionbar.rightbars = 0
	TukuiCF.actionbar.bottomrows = 2
	TukuiCF.actionbar.splitbar = true
end
if TukuiDB.myclass == "WARRIOR" then
	TukuiCF.actionbar.rightbars = 0
	TukuiCF.actionbar.bottomrows = 2
	TukuiCF.actionbar.splitbar = false
	TukuiCF.datatext.avd = 1
	TukuiCF.datatext.justice = 0
	TukuiCF.datatext.crit = 3
	TukuiCF.datatext.mastery = 0
	TukuiCF.datatext.power = 7
	TukuiCF.datatext.haste = 0
end