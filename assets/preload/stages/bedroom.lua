function onCreate()

	makeLuaSprite('sky','bedroom/outside', 500, 20)
	addLuaSprite('sky', false)
	scaleObject('sky',1,1)
	setLuaSpriteScrollFactor('sky' , 1.3, 1.3);	

	makeLuaSprite('floor','bedroom/room', -560, -370)
	addLuaSprite('floor', false)

	makeAnimatedLuaSprite('dog', 'bedroom/brian', -280, 400)
	addAnimationByPrefix('dog','idledog','brian bump', 24, true)
	addLuaSprite('dog', false)
	objectPlayAnimation ('dog', 'Idledog', false)

	makeLuaSprite('toys','bedroom/front toys', -500, 700)
	addLuaSprite('toys', true)
	setLuaSpriteScrollFactor('toys' , 1.3, 1.3);

	makeLuaSprite('light','bedroom/lighting', -170, -92)
	addLuaSprite('light', true)
	scaleObject('light',2,1.3)
	setLuaSpriteScrollFactor('light' , 0, 0);
	
end

function onBeatHit()
	objectPlayAnimation ('dog', 'idledog', true)


end
