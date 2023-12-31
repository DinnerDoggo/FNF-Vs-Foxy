function onEvent(name, value1, value2)
    if name == 'Image Flash' then
        if flashingLights then -- If Flashing Lights are turned on, allow the script to run.
            makeLuaSprite('image', value1, -550, -300);
            addLuaSprite('image', true);
            doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
            setObjectCamera('image', 'other');
            runTimer('wait', value2);
        end
    end
end 
    
function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.1, 'linear');
    end
end
    
function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
end
