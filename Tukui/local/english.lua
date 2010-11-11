local playerName = UnitName("player")
local realmName = GetRealmName()
local _, class = UnitClass("player")
 local playerFaction = UnitFactionGroup("player")

if playerFaction == "Alliance" then
	factioncolor = "|cff6874FB"
elseif playerFaction == "Horde" then
	factioncolor = "|cffc00c08" 
end

if class == "DEATHKNIGHT" then
	classcolor = "|cffc41e3c"
elseif class == "DRUID" then
	classcolor = "|cffff7d0a"
elseif class == "HUNTER" then
	classcolor = "|cffabd674"
elseif class == "MAGE" then
	classcolor = "|cff68cdff"
elseif class == "PALADIN" then
	classcolor = "|cfff58cba"
elseif class == "PRIEST" then
	classcolor = "|cffd4d4d4"
elseif class == "ROGUE" then
	classcolor = "|cfffff352"
elseif class == "SHAMAN" then
	classcolor = "|cff294f9b"
elseif class == "WARLOCK" then
	classcolor = "|cff9482c9"
elseif class == "WARRIOR" then
	classcolor = "|cffc79c6e"
end

-- localization for enUS and enGB
tukuilocal.chat_BATTLEGROUND_GET = "[BG]"
tukuilocal.chat_BATTLEGROUND_LEADER_GET = "[BG]"
tukuilocal.chat_BN_WHISPER_GET = "From"
tukuilocal.chat_GUILD_GET = "[G]"
tukuilocal.chat_OFFICER_GET = "[O]"
tukuilocal.chat_PARTY_GET = "[P]"
tukuilocal.chat_PARTY_GUIDE_GET = "[P]"
tukuilocal.chat_PARTY_LEADER_GET = "[P]"
tukuilocal.chat_RAID_GET = "[R]"
tukuilocal.chat_RAID_LEADER_GET = "[R]"
tukuilocal.chat_RAID_WARNING_GET = "[W]"
tukuilocal.chat_WHISPER_GET = "From"
tukuilocal.chat_FLAG_AFK = "[AFK]"
tukuilocal.chat_FLAG_DND = "[DND]"
tukuilocal.chat_FLAG_GM = "[GM]"
tukuilocal.chat_ERR_FRIEND_ONLINE_SS = "is now |cff298F00online|r"
tukuilocal.chat_ERR_FRIEND_OFFLINE_S = "is now |cffff0000offline|r"

tukuilocal.chat_general = "General"
tukuilocal.chat_trade = "Trade"
tukuilocal.chat_defense = "LocalDefense"
tukuilocal.chat_recrutment = "GuildRecruitment"
tukuilocal.chat_lfg = "LookingForGroup"

tukuilocal.disband = "Disbanding group."

tukuilocal.datatext_download = "Download: "
tukuilocal.datatext_bandwidth = "Bandwidth: "
tukuilocal.datatext_guild = "Guild"
tukuilocal.datatext_noguild = "No Guild"
tukuilocal.datatext_bags = "Bags: "
tukuilocal.datatext_friends = "Friends"
tukuilocal.datatext_online = "Online: "
tukuilocal.datatext_armor = "Armor"
tukuilocal.datatext_earned = "Earned:"
tukuilocal.datatext_spent = "Spent:"
tukuilocal.datatext_deficit = "Deficit:"
tukuilocal.datatext_profit = "Profit:"
tukuilocal.datatext_timeto = "Time to"
tukuilocal.datatext_friendlist = "Friends list:"
tukuilocal.datatext_playersp = "sp"
tukuilocal.datatext_playerap = "ap"
tukuilocal.datatext_playerhaste = "haste"
tukuilocal.datatext_dps = "dps"
tukuilocal.datatext_hps = "hps"
tukuilocal.datatext_playerarp = "arp"
tukuilocal.datatext_session = "Session: "
tukuilocal.datatext_character = "Character: "
tukuilocal.datatext_server = "Server: "
tukuilocal.datatext_totalgold = "Total: "
tukuilocal.datatext_savedraid = "Saved Raid(s)"
tukuilocal.datatext_currency = "Currency:"
tukuilocal.datatext_fps = " fps & "
tukuilocal.datatext_ms = " ms"
tukuilocal.datatext_playercrit = " crit"
tukuilocal.datatext_playerheal = " heal"
tukuilocal.datatext_avoidancebreakdown = "Avoidance Breakdown"
tukuilocal.datatext_lvl = "lvl"
tukuilocal.datatext_boss = "boss"
tukuilocal.datatext_miss = "Miss"
tukuilocal.datatext_dodge = "Dodge"
tukuilocal.datatext_block = "Block"
tukuilocal.datatext_parry = "Parry"
tukuilocal.datatext_playeravd = "avd: "
tukuilocal.datatext_servertime = "Server Time: "
tukuilocal.datatext_localtime = "Local Time: "
tukuilocal.datatext_mitigation = "Mitigation By Level: "
tukuilocal.datatext_healing = "Healing : "
tukuilocal.datatext_damage = "Damage : "
tukuilocal.datatext_honor = "Honor : "
tukuilocal.datatext_killingblows = "Killing Blows : "
tukuilocal.datatext_ttstatsfor = "Stats for "
tukuilocal.datatext_ttkillingblows = "Killing Blows:"
tukuilocal.datatext_tthonorkills = "Honorable Kills:"
tukuilocal.datatext_ttdeaths = "Deaths:"
tukuilocal.datatext_tthonorgain = "Honor Gained:"
tukuilocal.datatext_ttdmgdone = "Damage Done:"
tukuilocal.datatext_tthealdone = "Healing Done:"
tukuilocal.datatext_basesassaulted = "Bases Assaulted:"
tukuilocal.datatext_basesdefended = "Bases Defended:"
tukuilocal.datatext_towersassaulted = "Towers Assaulted:"
tukuilocal.datatext_towersdefended = "Towers Defended:"
tukuilocal.datatext_flagscaptured = "Flags Captured:"
tukuilocal.datatext_flagsreturned = "Flags Returned:"
tukuilocal.datatext_graveyardsassaulted = "Graveyards Assaulted:"
tukuilocal.datatext_graveyardsdefended = "Graveyards Defended:"
tukuilocal.datatext_demolishersdestroyed = "Demolishers Destroyed:"
tukuilocal.datatext_gatesdestroyed = "Gates Destroyed:"
tukuilocal.datatext_totalmemusage = "Total Memory Usage:"
tukuilocal.datatext_control = "Controlled by:"

tukuilocal.Slots = {
	[1] = {1, "Head", 1000},
	[2] = {3, "Shoulder", 1000},
	[3] = {5, "Chest", 1000},
	[4] = {6, "Waist", 1000},
	[5] = {9, "Wrist", 1000},
	[6] = {10, "Hands", 1000},
	[7] = {7, "Legs", 1000},
	[8] = {8, "Feet", 1000},
	[9] = {16, "Main Hand", 1000},
	[10] = {17, "Off Hand", 1000},
	[11] = {18, "Ranged", 1000}
}

tukuilocal.popup_disableui = "Tukui doesn't work for this resolution, do you want to disable Tukui? (Cancel if you want to try another resolution)"
tukuilocal.popup_install = "First time on Tukui V12 with this Character. You must reload UI to set Action Bars, Variables and Chat Frames."
tukuilocal.popup_2raidactive = "2 raid layouts are active, please select a layout."

tukuilocal.merchant_repairnomoney = "You don't have enough money for repair!"
tukuilocal.merchant_repaircost = "Your items have been repaired for"
tukuilocal.merchant_trashsell = "Your vendor trash has been sold and you earned"

tukuilocal.goldabbrev = "|cffffd700g|r"
tukuilocal.silverabbrev = "|cffc7c7cfs|r"
tukuilocal.copperabbrev = "|cffeda55fc|r"

tukuilocal.error_noerror = "No error yet."

tukuilocal.unitframes_ouf_offline = "Offline"
tukuilocal.unitframes_ouf_dead = "Dead"
tukuilocal.unitframes_ouf_ghost = "Ghost"
tukuilocal.unitframes_ouf_lowmana = "LOW MANA"
tukuilocal.unitframes_ouf_threattext = "Threat on current target:"
tukuilocal.unitframes_ouf_offlinedps = "Offline"
tukuilocal.unitframes_ouf_deaddps = "|cffff0000[DEAD]|r"
tukuilocal.unitframes_ouf_ghostheal = "GHOST"
tukuilocal.unitframes_ouf_deadheal = "DEAD"
tukuilocal.unitframes_ouf_gohawk = "GO HAWK"
tukuilocal.unitframes_ouf_goviper = "GO VIPER"
tukuilocal.unitframes_disconnected = "D/C"

tukuilocal.tooltip_count = "Count"

tukuilocal.bags_noslots = "can't buy anymore slots!"
tukuilocal.bags_costs = "Cost: %.2f gold"
tukuilocal.bags_buyslots = "Buy new slot with /bags purchase yes"
tukuilocal.bags_openbank = "You need to open your bank first."
tukuilocal.bags_sort = "sort your bags or your bank, if open."
tukuilocal.bags_stack = "fill up partial stacks in your bags or bank, if open."
tukuilocal.bags_buybankslot = "buy bank slot. (need to have bank open)"
tukuilocal.bags_search = "Search"
tukuilocal.bags_sortmenu = "Sort"
tukuilocal.bags_sortspecial = "Sort Special"
tukuilocal.bags_stackmenu = "Stack"
tukuilocal.bags_stackspecial = "Stack Special"
tukuilocal.bags_showbags = "Show Bags"
tukuilocal.bags_sortingbags = "Sorting finished."
tukuilocal.bags_nothingsort= "Nothing to sort."
tukuilocal.bags_bids = "Using bags: "
tukuilocal.bags_stackend = "Restacking finished."
tukuilocal.bags_rightclick_search = "Right-click to search."

tukuilocal.chat_invalidtarget = "Invalid Target"

tukuilocal.mount_wintergrasp = "Wintergrasp"

tukuilocal.core_autoinv_enable = "Autoinvite ON: invite"
tukuilocal.core_autoinv_enable_c = "Autoinvite ON: "
tukuilocal.core_autoinv_disable = "Autoinvite OFF"
tukuilocal.core_wf_unlock = "WatchFrame unlock"
tukuilocal.core_wf_lock = "WatchFrame lock"
tukuilocal.core_welcome1 = "Welcome back to "..factioncolor..realmName.."|r, "..classcolor..playerName.."|r! You are using |cffC495DDTukui|r, version "
tukuilocal.core_welcome2 = "Type |cff00FFFF/uihelp|r for more info or visit us at http://tukui.org"

tukuilocal.core_uihelp1 = "|cff00ff00General Slash Commands|r"
tukuilocal.core_uihelp2 = "|cffFF0000/tracker|r - Tukui Arena Enemy Cooldown Tracker - Low-memory enemy PVP cooldown tracker. (Icon only)"
tukuilocal.core_uihelp3 = "|cffFF0000/rl|r - Reloads your User Interface."
tukuilocal.core_uihelp4 = "|cffFF0000/gm|r - Send GM tickets or show WoW in-game help."
tukuilocal.core_uihelp5 = "|cffFF0000/frame|r - Detect frame name you currently mouseover. (very useful for lua editor)"
tukuilocal.core_uihelp6 = "|cffFF0000/heal|r - Enable healing raid layout."
tukuilocal.core_uihelp7 = "|cffFF0000/dps|r - Enable Dps/Tank raid layout."
tukuilocal.core_uihelp8 = "|cffFF0000/uf|r - Enable or disable moving unit frames."
tukuilocal.core_uihelp9 = "|cffFF0000/bags|r - for sorting, buying bank slot or stacking items in your bags."
tukuilocal.core_uihelp10 = "|cffFF0000/resetui|r - reset cVar and Chat Frames to tukz default."
tukuilocal.core_uihelp11 = "|cffFF0000/rd|r - disband raid."
tukuilocal.core_uihelp12 = "|cffFF0000/wf|r - unlock quest watch frame for dragging."
tukuilocal.core_uihelp13 = "|cffFF0000/mss|r - Move shapeshift or totem bar."
tukuilocal.core_uihelp15 = "|cffFF0000/ainv|r - Enable autoinvite via keyword on whisper. You can set your own keyword by typing `/ainv myword`"
tukuilocal.core_uihelp14 = "(Scroll up for more commands ...)"

tukuilocal.symbol_CLEAR = "Clear"
tukuilocal.symbol_SKULL = "Skull"
tukuilocal.symbol_CROSS = "Cross"
tukuilocal.symbol_SQUARE = "Square"
tukuilocal.symbol_MOON = "Moon"
tukuilocal.symbol_TRIANGLE = "Triangle"
tukuilocal.symbol_DIAMOND = "Diamond"
tukuilocal.symbol_CIRCLE = "Circle"
tukuilocal.symbol_STAR = "Star"

tukuilocal.bind_combat = "You can't bind keys in combat."
tukuilocal.bind_saved = "All keybindings have been saved."
tukuilocal.bind_discard = "All newly set keybindings have been discarded."
tukuilocal.bind_instruct = "Hover your mouse over any actionbutton to bind it. Press the escape key or right click to clear the current actionbutton's keybinding."
tukuilocal.bind_save = "Save bindings"
tukuilocal.bind_discardbind = "Discard bindings"

tukuilocal.hunter_unhappy = "Your pet is hungry. Time to feed!"
tukuilocal.hunter_content = "Your pet is still hungry. Just a little more nomnoms!"
tukuilocal.hunter_happy = "Your pets tummy is full!"