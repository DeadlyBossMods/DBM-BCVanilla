local L
local mod1	= DBM:NewMod("Shadikith", "DBM-Karazhan")
L = mod1:GetLocalizedStrings()
mod1:SetCreatureID(16180)
mod1:RegisterCombat("combat")

local mod2	= DBM:NewMod("Hyakiss", "DBM-Karazhan")
L = mod2:GetLocalizedStrings()
mod2:SetCreatureID(16179)
mod2:RegisterCombat("combat")

local mod3	= DBM:NewMod("Rokad", "DBM-Karazhan")
L = mod3:GetLocalizedStrings()
mod3:SetCreatureID(16181)
mod3:RegisterCombat("combat")
