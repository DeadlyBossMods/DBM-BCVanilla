local mod	= DBM:NewMod("Golemagg", "DBM-Raids-Vanilla", 4)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(11988)--, 11672
mod:SetEncounterID(670)
mod:SetModelID(11986)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 20553"
)

--TODO, verify spellId, it might be 19798
local warnQuake		= mod:NewSpellAnnounce(20553)

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 20553 then
		warnQuake:Show()
	end
end