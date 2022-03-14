--############### DROP ARME #############

function SetWeaponDrops()
	local handle, ped = FindFirstPed()
	local finished = false

	repeat
		if not IsEntityDead(ped) then
			SetPedDropsWeaponsWhenDead(ped, false)
		end
		finished, ped = FindNextPed(handle)
	until not finished

	EndFindPed(handle)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		SetWeaponDrops()
	end
end)

--########## DISCORD ########

Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(Config.discordappid)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset(Config.logo)

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText(Config.messagelogo)
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall(Config.petitlogo)

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText(Config.messagepetitlogo)

        SetDiscordRichPresenceAction(0, "Se Connecter Au Serveur !", "fivem://connect/"..Config.ip)
        SetDiscordRichPresenceAction(1, "Rejoins Le Discord !", Config.discord)

        -- It updates every minute just in case.
		Citizen.Wait(1000)
	end
end)


--########## TAPER AVEC R ########


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		DisableControlAction(0, 140, true)
	end
end)

------------------------

-- DESACTIVER LE CHANGEMENT DE PLACE AUTO

local disableShuffle = true
function disableSeatShuffle(flag)
	disableShuffle = flag
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedInAnyVehicle(GetPlayerPed(-1), false) and disableShuffle then
			if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
				if GetIsTaskActive(GetPlayerPed(-1), 165) then
					SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
				end
			end
		end
	end
end)

local doors = {
	{"seat_dside_f", -1},
	{"seat_pside_f", 0},
	{"seat_dside_r", 1},
	{"seat_pside_r", 2}
}

function VehicleInFront(ped)
    local pos = GetEntityCoords(ped)
    local entityWorld = GetOffsetFromEntityInWorldCoords(ped, 0.0, 5.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, ped, 0)
    local _, _, _, _, result = GetRaycastResult(rayHandle)
	
    return result
end

Citizen.CreateThread(function()
	while true do
    	Citizen.Wait(0)
			
		local ped = PlayerPedId()
			
   		if IsControlJustReleased(0, 23) and running ~= true and GetVehiclePedIsIn(ped, false) == 0 then
      		local vehicle = VehicleInFront(ped)
				
      		running = true
				
      		if vehicle ~= nil then
				local plyCoords = GetEntityCoords(ped, false)
        		local doorDistances = {}
					
        		for k, door in pairs(doors) do
          			local doorBone = GetEntityBoneIndexByName(vehicle, door[1])
          			local doorPos = GetWorldPositionOfEntityBone(vehicle, doorBone)
          			local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, doorPos.x, doorPos.y, doorPos.z)
						
          			table.insert(doorDistances, distance)
        		end
					
        		local key, min = 1, doorDistances[1]
					
        		for k, v in ipairs(doorDistances) do
          			if doorDistances[k] < min then
           				key, min = k, v
          			end
        		end
					
        		TaskEnterVehicle(ped, vehicle, -1, doors[key][2], 1.5, 1, 0)
     		end
				
      		running = false
    	end
  	end
end)

-- KEYBIND CHANGEMENT PLACE VEHICLE
Citizen.CreateThread(function()
    while true do
        local plyPed = PlayerPedId()
        if IsPedSittingInAnyVehicle(plyPed) then
            local plyVehicle = GetVehiclePedIsIn(plyPed, false)
			CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 -- On définit la vitesse du véhicule en km/h
			if CarSpeed <= Config.vitessemaxchangerplace then -- On ne peux pas changer de place si la vitesse du véhicule est au dessus ou égale à 60 km/h
				if IsControlJustReleased(0, 157) then -- conducteur
					SetPedIntoVehicle(plyPed, plyVehicle, -1)
					Citizen.Wait(10)
				end
				if IsControlJustReleased(0, 158) then -- avant droit
					SetPedIntoVehicle(plyPed, plyVehicle, 0)
					Citizen.Wait(10)
				end
				if IsControlJustReleased(0, 160) then -- arriere gauche
					SetPedIntoVehicle(plyPed, plyVehicle, 1)
					Citizen.Wait(10)
				end
				if IsControlJustReleased(0, 164) then -- arriere gauche
					SetPedIntoVehicle(plyPed, plyVehicle, 2)
					Citizen.Wait(10)
				end
			end
		end
		Citizen.Wait(10) -- anti crash
	end
end)

---SACCROUPIRE

local crouched = false

Citizen.CreateThread( function()
    while true do 
        Citizen.Wait(5)

        local ped = GetPlayerPed(-1)

        if (DoesEntityExist(ped) and not IsEntityDead(ped)) then 
            DisableControlAction(0, 36, true) -- INPUT_DUCK  

            if (not IsPauseMenuActive()) then 
                if (IsDisabledControlJustPressed(0, 36)) then 
                    RequestAnimSet("move_ped_crouched")

                    while (not HasAnimSetLoaded("move_ped_crouched")) do 
                        Citizen.Wait(100)
                    end 

                    if (crouched == true) then 
                        ResetPedMovementClipset(ped, 0)
                        crouched = false 
                    elseif (crouched == false) then
                        SetPedMovementClipset(ped, "move_ped_crouched", 0.25)
                        crouched = true 
                    end 
                end
            end 
        end 
    end
end)