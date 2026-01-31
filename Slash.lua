-- Slash.lua
local _, HBRM = ...
local L = HBRM.L

SLASH_HBRM1 = "/hbrm"
SlashCmdList["HBRM"] = function(msg)
    msg = msg:lower()
    local db = HideBlizzardRaidManagerDB

    if msg == "on" then
        db.master = "on"
        print(L.ON)

    elseif msg == "off" then
        db.master = "off"
        print(L.OFF)

    elseif msg == "party" then
        db.master = "auto"
        db.rule = "party"
        print(L.MODE_PARTY)

    elseif msg == "raid" then
        db.master = "auto"
        db.rule = "raid"
        print(L.MODE_RAID)

    elseif msg == "status" then
        local master, rule, group, effect = HBRM:GetStatus()
        print("|cffffff00" .. L.STATUS_TITLE .. "|r")
        print(L.STATUS_MODE   .. ": " .. L["MODE_" .. master:upper()])
        print(L.STATUS_RULE   .. ": " .. L["RULE_" .. rule:upper()])
        print(L.STATUS_GROUP  .. ": " .. L["GROUP_" .. group:upper()])
        print(L.STATUS_EFFECT .. ": " .. L["EFFECT_" .. effect:upper()])
        return

    else
        print(L.TITLE)
        for _, v in ipairs(L.HELP) do
            print(v)
        end
        return
    end

    HBRM:Apply()
end
