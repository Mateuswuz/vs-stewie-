	-- Event notes hooks
function onEvent(name, value1)
	if name == 'White Flash' then
		makeLuaSprite('whiteflash','whiteflash',-10000, -10000)
        setScrollFactor('whiteflash', 0.9, 0.9);
        scaleObject('whiteflash', 1000, 1000);
        doTweenAlpha('whiteflash', 'whiteflash', 0, 0.5, linear)

        addLuaSprite('whiteflash', true);
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end