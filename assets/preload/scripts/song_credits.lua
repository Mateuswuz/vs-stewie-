function onCreate()
    if songName == 'Deuces' then author = 'SIPHON' end
 
    
    
    makeLuaSprite('whitebg','',-1000,200)
    makeGraphic('whitebg',400,100,'FFFFFF')
    setObjectCamera('whitebg','other')
    setProperty('whitebg.alpha',0.7)
    addLuaSprite('whitebg')

    makeLuaText('songtext',songName,400,0,200)
    setTextSize('songtext',30)
    setObjectCamera('songtext','other')
    setTextAlignment('songtext','center')
    addLuaText('songtext')

    makeLuaText('authortext','Composer:'..author..'',400,0,250)
    setTextSize('authortext',30)
    setObjectCamera('authortext','other')
    setTextAlignment('authortext','center')
    addLuaText('authortext')
end
function onCreatePost()
    doTweenX('songtweenin','whitebg',0,1,'cubeOut')
end

function onUpdate()
    setProperty('songtext.x',getProperty('whitebg.x'))
    setProperty('authortext.x',getProperty('whitebg.x'))
end

function onTweenCompleted(tag)
    if tag == 'songtweenin' then
        runTimer('tweentimer',3)
    end
    if tag == 'songtweenout' then
        removeLuaText('authortext')
        removeLuaText('songtext')
        removeLuaSprite('whitebg')
    end
end

function onTimerCompleted(tag)
    if tag == 'tweentimer' then
        doTweenX('songtweenout','whitebg',-1000,1,'cubeIn')
    end
end