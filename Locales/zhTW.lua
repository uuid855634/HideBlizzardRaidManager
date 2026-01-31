-- Locales/zhTW.lua
local _, HBRM = ...
if GetLocale() ~= "zhTW" then return end

local L = HBRM.L

L.TITLE = "隱藏暴雪團隊管理器"

L.ON  = "始終隱藏暴雪團隊管理器"
L.OFF = "始終顯示暴雪團隊管理器"

L.MODE_PARTY = "僅在小隊中隱藏暴雪團隊管理器"
L.MODE_RAID  = "僅在團隊中隱藏暴雪團隊管理器"

L.HELP = {
    "/hbrm on     - 全域隱藏",
    "/hbrm off    - 全域顯示",
    "/hbrm party  - 僅小隊隱藏",
    "/hbrm raid   - 僅團隊隱藏",
    "/hbrm status - 查看目前狀態",
}

L.STATUS_TITLE  = "HBRM 狀態"
L.STATUS_MODE   = "模式"
L.STATUS_RULE   = "規則"
L.STATUS_GROUP  = "隊伍狀態"
L.STATUS_EFFECT = "目前效果"

L.MODE_ON   = "開啟（始終隱藏）"
L.MODE_OFF  = "關閉（始終顯示）"
L.MODE_AUTO = "自動"

L.RULE_PARTY = "僅小隊"
L.RULE_RAID  = "僅團隊"

L.GROUP_SOLO  = "單人"
L.GROUP_PARTY = "小隊"
L.GROUP_RAID  = "團隊"

L.EFFECT_HIDDEN = "已隱藏"
L.EFFECT_SHOWN  = "已顯示"
