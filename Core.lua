-- Core.lua
local ADDON_NAME, HBRM = ...
HBRM.frame = CreateFrame("Frame")

local defaults = {
    master = "auto", -- on | off | auto
    rule   = "party", -- party | raid
}

local function InPartyOnly()
    return IsInGroup() and not IsInRaid()
end

local function ShouldHide()
    local db = HideBlizzardRaidManagerDB

    -- Solo: always hide
    if not IsInGroup() then
        return true
    end

    if db.master == "on" then
        return true
    end

    if db.master == "off" then
        return false
    end

    -- auto
    if db.rule == "party" then
        return InPartyOnly()
    end

    if db.rule == "raid" then
        return IsInRaid()
    end

    return true
end

function HBRM:Apply()
    if not CompactRaidFrameManager then return end

    if ShouldHide() then
        CompactRaidFrameManager:Hide()
    else
        CompactRaidFrameManager:Show()
    end
end

function HBRM:GetStatus()
    local db = HideBlizzardRaidManagerDB

    local group
    if IsInRaid() then
        group = "raid"
    elseif IsInGroup() then
        group = "party"
    else
        group = "solo"
    end

    local effect = ShouldHide() and "hidden" or "shown"
    return db.master, db.rule, group, effect
end

HBRM.frame:RegisterEvent("ADDON_LOADED")
HBRM.frame:RegisterEvent("GROUP_ROSTER_UPDATE")
HBRM.frame:RegisterEvent("PLAYER_ENTERING_WORLD")

HBRM.frame:SetScript("OnEvent", function(_, event, arg1)
    if event == "ADDON_LOADED" and arg1 == ADDON_NAME then
        HideBlizzardRaidManagerDB = HideBlizzardRaidManagerDB or {}
        for k, v in pairs(defaults) do
            if HideBlizzardRaidManagerDB[k] == nil then
                HideBlizzardRaidManagerDB[k] = v
            end
        end
    end

    HBRM:Apply()
end)

hooksecurefunc("CompactRaidFrameManager_Show", function()
    C_Timer.After(0, function()
        HBRM:Apply()
    end)
end)
