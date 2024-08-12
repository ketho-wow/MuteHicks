MuteSoundFile(1901266) -- sound/creature/kul_tiran_military/vo_801_kul_tiran_military_53_m.ogg
MuteSoundFile(1901276) -- sound/creature/kul_tiran_military/vo_801_kul_tiran_military_58_m.ogg

local locales = {
	enUS = "Captain Hicks",
	koKR = "대장 힉스",
	frFR = "Capitaine Hicks",
	deDE = "Kapitän Hinz",
	zhCN = "希克斯船长",
	zhTW = "希克斯船長",
	esES = "Capitán Hicks",
	esMX = "Capitán Hicks",
	ruRU = "Капитан Хикс",
	ptBR = "Capitão Hicks",
	itIT = "Capitano Hicks",
}

local hicks = locales[GetLocale()]

local function filter(self, event, msg, sender)
	if sender == hicks then
		return true
	end
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_MONSTER_YELL", filter)
