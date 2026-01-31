-- Locales/zhCN.lua
local _, HBRM = ...
if GetLocale() ~= "zhCN" then return end

local L = HBRM.L

L.TITLE = "隐藏暴雪团队管理器"

L.ON  = "始终隐藏暴雪团队管理器"
L.OFF = "始终显示暴雪团队管理器"

L.MODE_PARTY = "仅在小队中隐藏暴雪团队管理器"
L.MODE_RAID  = "仅在团队中隐藏暴雪团队管理器"

L.HELP = {
    "/hbrm on     - 全局隐藏",
    "/hbrm off    - 全局显示",
    "/hbrm party  - 仅小队隐藏",
    "/hbrm raid   - 仅团队隐藏",
    "/hbrm status - 查看当前状态",
}

L.STATUS_TITLE  = "HBRM 状态"
L.STATUS_MODE   = "模式"
L.STATUS_RULE   = "规则"
L.STATUS_GROUP  = "队伍状态"
L.STATUS_EFFECT = "当前效果"

L.MODE_ON   = "开启（始终隐藏）"
L.MODE_OFF  = "关闭（始终显示）"
L.MODE_AUTO = "自动"

L.RULE_PARTY = "仅小队"
L.RULE_RAID  = "仅团队"

L.GROUP_SOLO  = "单人"
L.GROUP_PARTY = "小队"
L.GROUP_RAID  = "团队"

L.EFFECT_HIDDEN = "已隐藏"
L.EFFECT_SHOWN  = "已显示"
