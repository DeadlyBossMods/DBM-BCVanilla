local Yor = DBM:NewBossMod("Yor", DBM_YOR_NAME, DBM_YOR_DESCRIPTION, DBM_TOMBS, DBM_AUCH_TAB, 4)

Yor.Version	= "0.1"
Yor.Author	= "Arta"

Yor:SetCreatureID(22930)
Yor:RegisterCombat("combat")

Yor:RegisterEvents(
)

function Yor:OnEvent(event, args)
end
