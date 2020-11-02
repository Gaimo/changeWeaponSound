local distance = 140 --distance from where you can hear the shot
local cSoundsEnabled = true

--shoot sounds
function playSounds(weapon, ammo, ammoInClip)
	if(cSoundsEnabled)then
		local x,y,z = getElementPosition(source)

		if weapon == 30 then --ak47
		
			local sound = playSound3D("sounds/weapons/ak47.wav", x,y,z)
			setSoundVolume(sound, 0.3)
			setSoundMaxDistance(sound, distance)
			
		end
	end
end
addEventHandler("onClientPlayerWeaponFire", getRootElement(), playSounds)