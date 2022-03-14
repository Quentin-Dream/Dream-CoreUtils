Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)		
		Manage()			
	end
end)

function Manage()
	local isSniper = false
	while true do
		Citizen.Wait(1)

		local ped = GetPlayerPed(-1)
		--
		if IsPedArmed(ped, 6) then
        	DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end
		--
		DisplayAmmoThisFrame(false)
		--
		
		local currentWeaponHash = GetSelectedPedWeapon(ped)

		if currentWeaponHash == 100416529 then
			isSniper = true
		elseif currentWeaponHash == 205991906 then
			isSniper = true
		elseif currentWeaponHash == -952879014 then
			isSniper = true
		elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
			isSniper = true
		else
			isSniper = false
		end

		if not isSniper then
			HideHudComponentThisFrame(14)
		end
	end
end 

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then
			local _,wep = GetCurrentPedWeapon(PlayerPedId())
			_,cAmmo = GetAmmoInClip(PlayerPedId(), wep)
			if Config.recule[wep] and Config.recule[wep] ~= 0 then
				tv = 0
				repeat 
					Wait(0)
					p = GetGameplayCamRelativePitch()
					if GetFollowPedCamViewMode() ~= 4 then
						SetGameplayCamRelativePitch(p+0.1, 0.2)
					end
					tv = tv+0.1
				until tv >= Config.recule[wep]
			end
			
		end
	end
end)