function onUpdate(elapsed)
	if curStep >= 0 and curStep < 9999 then
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)

		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 350*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 320*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 320 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

		noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 350*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 320*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 370 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

	end
end