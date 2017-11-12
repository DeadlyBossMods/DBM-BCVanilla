local mod	= DBM:NewMod("Kurinnaxx", "DBM-AQ20", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15348)
mod:SetEncounterID(718)
mod:SetModelID(15742)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 25646 25656",
	"SPELL_AURA_APPLIED_DOSE 25646"
)

local warnWound			= mod:NewStackAnnounce(25646, 3, nil, "Tank")
local warnSandTrap		= mod:NewTargetAnnounce(25656, 4)

local specWarnWound		= mod:NewSpecialWarningStack(25646, nil, 5, nil, nil, 1, 6)
local specWarnWoundTaunt= mod:NewSpecialWarningTaunt(25646, nil, nil, nil, 1, 2)

local timerWound		= mod:NewTargetTimer(15, 25646, nil, "Tank", nil, 5, nil, DBM_CORE_TANK_ICON)
local timerSandTrap		= mod:NewTargetTimer(20, 25656, nil, false, nil, 3)

local voiceWound		= mod:NewVoice(25646)--stackhigh/Tauntboss

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 25646 and not self:IsTrivial(80) then
		local amount = args.amount or 1
		timerWound:Start(args.destName)
		if amount >= 5 then
			if args:IsPlayer() then
				specWarnWound:Show(amount)
				voiceWound:Play("stackhigh")
			elseif not UnitDebuff("player", args.spellName) and not UnitIsDeadOrGhost("player") then
				specWarnWoundTaunt:Show(args.destName)
				voiceWound:Play("tauntboss")
			else
				warnWound:Show(args.destName, amount)
			end
		else
			warnWound:Show(args.destName, amount)
		end
	elseif args.spellId == 25656 then
		warnSandTrap:Show(args.destName)
		timerSandTrap:Start(args.destName)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
