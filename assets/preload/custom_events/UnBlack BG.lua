	-- Event notes hooks
function onEvent(name, value1)
	if name == 'UnBlack BG' then
		removeLuaSprite('bgblack', true);
		
		makeLuaSprite('bgblack','bgblack',-10000, -10000)
        setScrollFactor('bgblack', 0.9, 0.9);
        scaleObject('bgblack', 1000, 1000);
		doTweenAlpha('bgblack', 'bgblack', 0, 1, linear)

        addLuaSprite('bgblack', true);
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end