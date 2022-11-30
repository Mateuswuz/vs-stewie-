	-- Event notes hooks
function onEvent(name, value1)
	if name == 'Black BG' then
		makeLuaSprite('bgblack','bgblack',-0, -0)
        setScrollFactor('bgblack', 0.9, 0.9);
        scaleObject('bgblack', 1000, 1000);

		makeLuaSprite('whiteflash','whiteflash',-10000, -10000)
        setScrollFactor('whiteflash', 0.9, 0.9);
        scaleObject('whiteflash', 1000, 1000);
		doTweenAlpha('whiteflash', 'whiteflash', 0, 0.25, linear)

		addLuaSprite('bgblack', true);
		addLuaSprite('whiteflash', true);
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
 end