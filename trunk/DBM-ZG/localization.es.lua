if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local L

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "Sumo sacerdote Venoxis"
}
L:SetWarningLocalization{
	warnPhase2Soon	= "Fase 2 pronto"
}
L:SetOptionLocalization{
	warnPhase2Soon	= "Anunciar cuando la fase 2 est� a punto de comenzar",
	RangeFrame		= "Mostrar distancia"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "Suma sacerdotisa Jeklik"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "Suma sacerdotisa Mar'li"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "Sumo sacerdote Thekal"
}

L:SetWarningLocalization({
	WarnSimulKill	= "Primer add muerto - Resurrecci�n en ~12 segundos"
})

L:SetTimerLocalization({
	TimerSimulKill	= "Resurrecci�n"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Anunciar primer add muerto",
	TimerSimulKill	= "Mostrar tiempo para resurrecci�n de sacerdote"
})

L:SetMiscLocalization({
	PriestDied	= "%s muere.",
	YellPhase2	= "Shirvallah, fill me with your RAGE!", --translate
	YellKill	= "Hakkar binds me no more!  Peace at last!" --translate
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "Suma sacerdotisa Arlokk"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "Hakkar"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "Se�or sangriento Mandokir"
}
L:SetMiscLocalization{
	Bloodlord 	= "Se�or sangriento Mandokir",
	Ohgan		= "Ohgan"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Bland�n de la Locura"
}
L:SetMiscLocalization{
	Hazzarah = "Hazza'rah",
	Renataki = "Renataki",
	Wushoolay = "Wushoolay",
	Grilek = "Gri'lek"
}

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization{
	name = "Gahz'ranka"
}

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization{
	name = "Jin'do el Aojador"
}