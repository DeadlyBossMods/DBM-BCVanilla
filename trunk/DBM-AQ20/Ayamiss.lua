local mod	= DBM:NewMod("Ayamiss", "DBM-AQ20", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15369)
mod:SetEncounterID(722)
mod:SetModelID(15431)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 25725",
	"SPELL_AURA_REMOVED 25725",
	"UNIT_HEALTH boss1"
)

local warnPhase2	= mod:NewPhaseAnnounce(2)
local warnParalyze	= mod:NewTargetAnnounce(25725, 3)

local timerParalyze	= mod:NewTargetTimer(10, 25725, nil, nil, nil, 3)

mod.vb.phase = 1

function mod:OnCombatStart(delay)
	self.vb.phase = 1
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 25725 then
		warnParalyze:Show(args.destName)
		timerParalyze:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 25725 then
		timerParalyze:Stop()
	end
end

function mod:UNIT_HEALTH(uId)
	if self.vb.phase < 2 and self:GetUnitCreatureId(uId) == 15369 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.70 then
		self.vb.phase = 2
		warnPhase2:Show()
	end
end
