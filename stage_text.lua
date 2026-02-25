-- Stage Text for Intro Delay Module by dionednd

-- init text
local tsStageText = textImgNew()

textImgSetLocalcoord(tsStageText, 320, 240)
textImgSetAngle(tsStageText, 0)
textImgSetXShear(tsStageText, 0)
textImgSetProjection(tsStageText, "orthographic")
textImgSetFocalLength(tsStageText, 2048)

local function cond(condition, t, f)
	if condition then return t else return f end
end

function f_StageText()
	if gamemode() == "demo" then return end

	player(1)
	if map('bbtag_stageText') == 1 and (map('stageIntroTime') > (map('bbtag_IntroDelay') * -1) and map('stageIntroBegun')) then
		local font = motif.Fnt[map('bbtag_stageTextFont')]
		textImgSetFont(tsStageText, font)
		textImgSetAlign(tsStageText, map('bbtag_stageTextAlign'))
		textImgSetScale(tsStageText,
			map('bbtag_stageTextScaleX'),
			map('bbtag_stageTextScaleY'))
		textImgSetLayerno(tsStageText, map('bbtag_stageTextLayerno'))
		textImgSetPos(tsStageText, map('bbtag_stageTextPosX'), map('bbtag_stageTextPosY'))
		textImgSetColor(tsStageText,
			map('bbtag_stageTextColorR'),
			map('bbtag_stageTextColorG'),
			map('bbtag_stageTextColorB'),
			cond(map('stageIntroTime') <= 0, 256-(256*((map('stageIntroTime')*-1)/map('bbtag_IntroDelay'))),(256 -  (256*(map('stageIntroTime')/map('bbtag_stageIntroTime'))))))
		textImgSetBank(tsStageText, 0)
		local stage = getStageInfo(getStageNo())
		textImgSetText(tsStageText, tostring(stage.name) or "")
		textImgDraw(tsStageText)
	end
end

hook.add("loop", "StageText", f_StageText)



