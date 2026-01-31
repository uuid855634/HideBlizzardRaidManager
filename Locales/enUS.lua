-- Locales/enUS.lua
local _, HBRM = ...
local L = {}
HBRM.L = L

L.TITLE = "Hide Blizzard Raid Manager"

-- Commands
L.ON  = "Always hide Blizzard Raid Manager"
L.OFF = "Always show Blizzard Raid Manager"

L.MODE_PARTY = "Hide Blizzard Raid Manager in party only"
L.MODE_RAID  = "Hide Blizzard Raid Manager in raid only"

L.HELP = {
    "/hbrm on     - always hide",
    "/hbrm off    - always show",
    "/hbrm party  - hide in party only",
    "/hbrm raid   - hide in raid only",
    "/hbrm status - show current status",
}

-- Status
L.STATUS_TITLE  = "HBRM Status"
L.STATUS_MODE   = "Mode"
L.STATUS_RULE   = "Rule"
L.STATUS_GROUP  = "Group"
L.STATUS_EFFECT = "Effective"

L.MODE_ON   = "ON (always hide)"
L.MODE_OFF  = "OFF (always show)"
L.MODE_AUTO = "AUTO"

L.RULE_PARTY = "Party only"
L.RULE_RAID  = "Raid only"

L.GROUP_SOLO  = "Solo"
L.GROUP_PARTY = "Party"
L.GROUP_RAID  = "Raid"

L.EFFECT_HIDDEN = "Hidden"
L.EFFECT_SHOWN  = "Shown"
